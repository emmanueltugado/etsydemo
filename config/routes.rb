Etsydemo::Application.routes.draw do
	root 'listings#index'

  devise_for :users
  resources :listings

  get "pages/about"
  get "pages/contact"
  get "seller" => "listings#seller"
  end
