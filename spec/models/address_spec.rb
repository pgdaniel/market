require 'rails_helper'

RSpec.describe Address, type: :model do
  let(:address) { FactoryBot.build(:address) }
  let(:blank_address) { Address.new }

  it 'shows the full address' do
    expect(address.full_address).to eq "#{address.street_1}, #{address.city}, #{address.state}"
  end

  it 'shows nothing if there is no address' do
    expect(blank_address.full_address).to be_nil
  end
end
