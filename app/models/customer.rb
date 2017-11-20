class Customer < ApplicationRecord
  has_one :cart
  has_many :billing_addresses
  has_many :shipping_addresses
  has_many :invoices
end
