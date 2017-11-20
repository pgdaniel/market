class Address < ApplicationRecord
  validates_presence_of :street_1, :city, :state, :zipcode

  def full_address
    return if street_1.nil?
    "#{street_1}, #{city}, #{state}"
  end
end
