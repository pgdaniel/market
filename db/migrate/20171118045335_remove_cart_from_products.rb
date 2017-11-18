class RemoveCartFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :products, :cart, foreign_key: true
  end
end
