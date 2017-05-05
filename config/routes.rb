Rails.application.routes.draw do


  get 'pages/arms'

  get 'pages/chest'

  get 'pages/abs'

  get 'pages/shoulders'

  get 'pages/legs'

  get 'pages/back'

  #get 'users/show'
  root 'posts#index'
  
  devise_for :users
  #devise_for :models
  resources :posts
  resources :users, only: [:show] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
