class CheckOutController < ApplicationController
  def show
    @cart = current_customer.cart
  end
end
