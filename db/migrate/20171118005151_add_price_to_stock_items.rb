class AddPriceToStockItems < ActiveRecord::Migration[5.1]
  def change
    add_column :stock_items, :price_cents, :integer
  end
end
