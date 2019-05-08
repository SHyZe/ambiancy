class CommentPost < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true, allow_blank: false
end
