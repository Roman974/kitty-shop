Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders
  resources :items
  resources :cart
  resources :user
  resources :join_table_cart_items
  root 'items#index'
end
