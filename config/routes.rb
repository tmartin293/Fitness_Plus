Rails.application.routes.draw do
  resources :user_infos
  root 'posts#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :models
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
