class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable, :lockable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :posts
  has_many :products
  has_many :comment_products

  ## Avatars
  has_attached_file :avatar, styles: { big: "640x480>", medium: "400x250>", small: "200x300>", thumb: "100x100#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
