class CreateCommentProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_products do |t|
      t.text :content
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
