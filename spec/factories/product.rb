FactoryBot.define do
  factory :product do
    name { FFaker::Product.product_name }
    description "Discription goes here"
    price_cents { rand(1000..50000) }
    sku { rand(1000..50000).to_s + 5.times.map { rand(65..90).chr }.join }
    taxable { rand(0..1).zero? }
    perishable { rand(0..1).zero? }
  end
end
