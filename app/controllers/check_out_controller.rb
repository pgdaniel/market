class CheckOutController < ApplicationController
  def show
    @cart = current_customer.cart
  end

  def new
    @cart = current_customer.cart
  end

  def create
  end
end
