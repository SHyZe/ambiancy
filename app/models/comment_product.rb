class CommentProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :content, presence: true, allow_blank: false
end
