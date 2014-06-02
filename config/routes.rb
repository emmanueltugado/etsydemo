Etsydemo::Application.routes.draw do
	root 'listings#index'

  devise_for :users
  resources :listings do
  	resources :orders, only: [:new, :create]
  end

  get "pages/about"
  get "pages/contact"
  get "seller" => "listings#seller"
  get "sales" => "orders#sales"
  get "purchases" => "orders#purchases"
  end
