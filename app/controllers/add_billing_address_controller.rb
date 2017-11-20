class AddBillingAddressController < ApplicationController
  def new
    @address = Address.new
  end

  def create
    @billing_address = current_customer.billing_addresses.new(address: Address.new(address_params))

    if @billing_address.save
      redirect_to check_out_path
    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address).permit(:first_name, :last_name, :street_1, :street_2, :city, :state, :zipcode)
  end
end
