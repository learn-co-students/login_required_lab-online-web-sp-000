Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "sessions#new"
  resources :sessions, except: :show
  resources :secrets, except: :show
  get "/secret", to: "secrets#show", as: "secret_page"
  get "/session", to: "sessions#show", as: "homepage"
  post "/session", to: "sessions#destroy", as: "delete_session"

  #get "/secrets/:id", to: "secrets#show"
end
