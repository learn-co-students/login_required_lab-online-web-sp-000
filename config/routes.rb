Rails.application.routes.draw do
  resources :users
  resources :secrets
  resources :sessions
  root "application#homepage"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/show" => "secrets#show"
  post "/logout" => "sessions#destroy"
end
