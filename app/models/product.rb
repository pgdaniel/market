class Product < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price_cents
  validates_presence_of :sku
  validates_uniqueness_of :sku

  monetize :price_cents
end
