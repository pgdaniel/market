FactoryBot.define do
  factory :product do
    name "Dog whistle"
    description "Tweet tweet"
    price_cents 2000
    sku 'ABCD'
    taxable false
    perishable false
  end
end
