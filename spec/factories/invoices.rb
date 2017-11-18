FactoryBot.define do
  factory :invoice do
    customer nil
    total_cents "MyString"
    payment nil
    billing_address nil
  end
end
