Rails.application.routes.draw do
	
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
	devise_for :users, controllers: {
		sessions: 'users/sessions'
	}
	root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
