Rails.application.routes.draw do
	
  resources :alumnis
  get '/member', to: "members#index", as: "member"
  get '/sitemap' => 'sitemaps#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts do
    resources :likes
  end
	devise_for :users, controllers: {
		sessions: 'users/sessions'
	}
  root "home#index"
  scope "/users" do    
    get "/:id/", to: "users/logix#index", as: "user_posts"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
