class CartsController < ApplicationController
  def update
    # TODO error handling
    # TODO check if enough stock

    quantity.times { cart.line_items.create(product: product) }

    redirect_to products_path
  end

  def product
    @product = Product.find(params[:product_id])
  end

  def cart
    @cart ||= current_customer.cart || current_customer.create_cart
  end

  def quantity
    params[:quantity].to_i
  end
end
