Rails.application.routes.draw do

  devise_for :users
  root to: 'items#index'
  resources :shopping_experiences
  
  resources :items
  resources :categories
   
  


    resources :shex_items 
    post  'shopping_experience/add_to_cart', to: 'shopping_experiences#add_to_cart' , as: :add_to_cart 
    
   
    

      get 'shopping_experience/my_cart', to: 'shopping_experiences#display_cart', as: :display_cart


      post '/shopping_experience/delete_from_my_cart_/:item_id', to: 'shopping_experiences#delete_from_my_cart', as: :delete_item_from_cart

      post '/shopping_experience/check_out', to: 'shopping_experiences#checkout', as: :checkout
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
