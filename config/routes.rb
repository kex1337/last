Rails.application.routes.draw do

 
  resources :line_items
  resources :carts
 root to: 'items#index' 
 get 'admin', to: 'items#admin' 

 devise_for :users
 resources :items



end
