class Address < ApplicationRecord
  def full_address
    "#{street_1}, #{city}, #{state}"
  end
end
