Rails.application.routes.draw do
  
	root 'numbers#index'
	resources :numbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
