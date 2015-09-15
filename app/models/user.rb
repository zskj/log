class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, uniqueness: true
  has_many :posts
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessor :email, :name, :password, :password_confirmation, :remember_me
  def is_author_of?(post)
    posts.include?(post)
  end
  def join!(post)
    posts << post
  end
end
