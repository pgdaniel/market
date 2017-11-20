class Cart < ApplicationRecord
  belongs_to :customer
  has_many :line_items

  def total
    line_items.includes(:product).sum { |line_item| line_item.product.price }
  end
end
