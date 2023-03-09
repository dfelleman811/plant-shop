Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  
  root "home#index"

  resources :plants
  resources :carts, only: [:show]
  resources :cart_details

end
