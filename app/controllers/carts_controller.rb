class CartsController < ApplicationController
  def new
    @product = find_product
    @cart = Cart.new
  end

  def create
    @product = find_product

    # puts in cart
    cart.line_items.create(product: @product)

    redirect_to check_out_path
  end

  def find_product
    Product.find(params[:product_id])
  end

  def cart
    @cart ||= current_customer.cart || current_customer.create_cart
  end
end
