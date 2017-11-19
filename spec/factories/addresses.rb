FactoryBot.define do
  factory :address do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    company { FFaker::Company.name }
    street_1 { FFaker::AddressUS.street_address }
    city { FFaker::AddressUS.city }
    state { FFaker::AddressUS.state_abbr }
    zipcode { FFaker::AddressUS.zip_code }
  end
end
