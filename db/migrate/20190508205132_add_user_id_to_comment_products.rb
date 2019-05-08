class AddUserIdToCommentProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :comment_products, :user, foreign_key: true
  end
end
