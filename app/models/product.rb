class Product < ApplicationRecord
  belongs_to :stock_item, optional: :true
  validates_presence_of :name, :description
end
