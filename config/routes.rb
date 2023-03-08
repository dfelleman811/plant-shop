Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions"}
  
  root "home#index"

  resources :plants, only: [:index]

end
