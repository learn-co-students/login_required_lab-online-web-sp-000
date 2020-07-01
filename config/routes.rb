Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]
  get '/', to: "sessions#new"
  get "/sessions/home", to: "sessions#home"
  post "/sessions/delete", to: "sessions#destroy"
  get "/secrets/show", to: "secrets#show"
end
