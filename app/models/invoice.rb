class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :payment
  belongs_to :billing_address
  # TODO
  # has_many :shipping_addresses
  # has_many :shipments
end
