Rails.application.routes.draw do

  root to: 'items#index'
  resources :shex_items
  resources :shopping_experiences
  resources :items
  resources :categories
  # post '/users/add_to_cart_with_id/:id', to: 'user#add_to_cart_with_id', as: 'patient'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
