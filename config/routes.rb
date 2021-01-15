Rails.application.routes.draw do
  root 'sessions#new'

  resources :sessions, only: [:new, :create]

  post '/sessions', to: 'sessions#destroy'

  resources :secrets, only: [:index]

  get '/secrets/show', to: 'secrets#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
