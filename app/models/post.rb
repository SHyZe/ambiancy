class Post < ApplicationRecord
	belongs_to :user

	has_many :comment_posts, dependent: :destroy

	def self.search(search)
		if search
			where(["title LIKE ?","%#{search}%"])
		else
			all
		end
	end

	## Images
	has_attached_file :image, styles: { big: "640x480>", medium: "400x250>", small: "200x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
