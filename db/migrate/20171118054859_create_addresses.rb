class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
