class CheckoutController < ApplicationController
  def show
    @cart = current_customer.cart
    @line_items = current_customer.cart.line_items.includes(:product)
  end

  # def new
  #   @cart = current_customer.cart
  # end

  def create
  end
end
