Rails.application.routes.draw do
  root 'application#hello'
  get '/login', to: 'sessions#new'
  get '/home', to: 'sessions#home'
  get '/secrets', to: 'secrets#show'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
