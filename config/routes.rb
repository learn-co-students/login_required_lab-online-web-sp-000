Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create]
  post "destroy", to: "sessions#destroy"

  get "secrets/show", to: "secrets#show"
  root "sessions#new"
end
