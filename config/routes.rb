Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root "sessions#login"
  # resources :secrets, only: [:create, :show]
  # resources :sessions, only: [:new, :destroy]

  get 'secrets/new'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
