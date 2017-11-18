class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_customer
    # TODO
    @current_customer = Customer.last
  end
end
