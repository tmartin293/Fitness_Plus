Rails.application.routes.draw do
  
  resources :signups
	get 'welcome/index'

	root 'welcome#index'

	resources :info
	resources :contact
	resources :supports


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
