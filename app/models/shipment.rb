class Shipment < ApplicationRecord
  belongs_to :shipping_address
  belongs_to :invoice
end
