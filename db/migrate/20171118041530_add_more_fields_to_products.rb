class AddMoreFieldsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :price_cents, :integer
    add_column :products, :sku, :string
    add_column :products, :taxable, :boolean
    add_column :products, :perishable, :boolean
  end
end
