class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.belongs_to :shipping_address, foreign_key: true
      t.belongs_to :invoice, foreign_key: true

      t.timestamps
    end
  end
end
