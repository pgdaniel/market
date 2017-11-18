class CreateStockItems < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_items do |t|
      t.string :sku
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
