class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.belongs_to :customer, foreign_key: true
      t.string :total_cents
      t.belongs_to :payment, foreign_key: true
      t.belongs_to :billing_address, foreign_key: true

      t.timestamps
    end
  end
end
