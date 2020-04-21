Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#welcome"
  resources :sessions, only: [:create]
  get "/login", to: "sessions#new"
  post '/logout' => 'sessions#destroy'

  get "/secret", to: "secrets#show"
end
