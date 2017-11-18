class AddStockItemToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :stock_item, foreign_key: true
  end
end
