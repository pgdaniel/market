class Address < ApplicationRecord
  def full_address
    return if street_1.nil?
    "#{street_1}, #{city}, #{state}"
  end
end
