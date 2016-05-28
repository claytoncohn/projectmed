Rails.application.routes.draw do
	
  post '/rate' => 'rater#create', :as => 'rate'
  resources :products
  namespace :admin do
    resources :users
    root to: "users#index"
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
resources :favorite_products, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
end
