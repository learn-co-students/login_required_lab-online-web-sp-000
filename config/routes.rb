Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "sessions#new"
  resources :sessions
  resources :secrets
  get "/sessions/:id", to: "sessions#show", as: "welcome"

  #get "/secrets/:id", to: "secrets#show"
end
