class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category_product
  has_many :comment_products, dependent: :destroy

  acts_as_votable

  def self.search(search)
		if search
			where(["name LIKE ?","%#{search}%"])
		else
			all
		end
	end

	## Pictures
	has_attached_file :picture, styles: { big: "640x480>", medium: "400x250>", small: "200x300>", thumb: "100x100#" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end
