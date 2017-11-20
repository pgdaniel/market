Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :products
  resource :carts
  resource :checkout, controller: 'check_out'
  resource :add_billing_address, controller: 'add_billing_address'
  resource :add_shipping_address, controller: 'add_shipping_address'
  resources :payments
  resource :thank_you, controller: 'thank_you'

  root to: 'products#index'
end
