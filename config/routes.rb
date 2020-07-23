Rails.application.routes.draw do
	
  get 'home/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
	devise_for :users, controllers: {
		sessions: 'users/sessions'
	}
  root "home#index"
  scope "/users" do
    
    
    get "/:id/", to: "users/logix#index", as: "user_posts"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
