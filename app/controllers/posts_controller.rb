class PostsController < ApplicationController
    before_action :find_post , except:[:index,:new,:create]
    before_action :authenticate_user!  , except:[:index,:show]
    before_action :author_required, only: [:edit, :update,:destroy ]

	def index
		#@posts = Post.all.by_last_updated_at
		@posts = Post.by_last_updated_at.paginate(page:params[:page],per_page:5) 
	end

	def show

	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		if @post.save
			current_user.join!(@post)
			redirect_to posts_path
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if @post.update(post_params)
			redirect_to post_path(@post),notice: "修改成功"
		else
			render :edit
		end
		
	end

	def destroy
        @post.destroy
        redirect_to posts_path, alert: "已刪除"
	end

	

	private

	def author_required
      return if current_user.is_author_of?(@post)
      flash[:warning] = "你不是文章作者！不能操作"
      redirect_to post_path(@post)
    end

    def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :content)
	end
end
