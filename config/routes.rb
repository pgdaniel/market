Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products
  resources :carts
  resource :check_out, controller: 'check_out'

  root to: 'products#index'
end
