Rails.application.routes.draw do
  get 'orders/show'
  get 'orders/new'
  get 'cart/show'
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'items/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
