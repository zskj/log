class Post < ActiveRecord::Base
	scope :by_last_updated_at, ->{order(updated_at: :desc)}
	validates :title , presence: true
	validates :content , presence: true
	belongs_to :owner, class_name: "User", foreign_key: :user_id

	def editable_by?(user)
      user && user == owner
    end
end
