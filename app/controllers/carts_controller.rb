class CartsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @cart = Cart.new
  end

  def create
    @product = Product.find(params[:product_id])

    # puts in cart
  end
end
