Rails.application.routes.draw do
  #get 'users/show'
  root 'posts#index'
  devise_for :users
  #devise_for :models
  resources :posts 

  resources :users do 
   	resources :personal_infos
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
