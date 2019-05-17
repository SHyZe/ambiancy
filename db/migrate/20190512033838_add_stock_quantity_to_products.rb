class AddStockQuantityToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stock_quantity, :decimal
  end
end
