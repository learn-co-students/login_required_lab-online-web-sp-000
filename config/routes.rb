Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create, :destroy]
  resources :secrets, only: [:show]

  get "/login", to: "sessions#new"
  get "/", to: "secrets#show", as: :root
  post "/sessions/delete", to: "sessions#destroy"

end
