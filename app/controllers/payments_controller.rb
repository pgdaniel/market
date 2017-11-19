class PaymentsController < ApplicationController
  def new
    @total = current_customer.cart.total
    @payment = Payment.new
  end

  def create
    # current_customer
    # create a payment for an amount that is attached to invoice
    # TODO don't create dups add a state machine

    @invoice = current_customer.invoices.new(payment: Payment.new(payment_params), billing_address: billing_address)

    # set the cart state to archieved or something

    redirect_to thank_you_path
  end

  private

  def payment_params
    params.require(:payment).permit(:amount)
  end

  def billing_address
    # TODO
    current_customer.billing_addresses.last
  end
end
