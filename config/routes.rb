Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/create', to: 'sessions#create'
  post '/destroy', to: 'sessions#destroy'
  get '/welcome', to: 'secrets#welcome'
  root 'sessions#login'
  get '/secrets', to: 'secrets#show'

end
