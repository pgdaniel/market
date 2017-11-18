class CreateShippingAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :shipping_addresses do |t|
      t.belongs_to :address, foreign_key: true
      t.belongs_to :customer, foreign_key: true

      t.timestamps
    end
  end
end
