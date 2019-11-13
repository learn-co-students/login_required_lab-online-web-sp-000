Rails.application.routes.draw do

  root 'sessions#new'
  get '/sessions/new', to: "sessions#new"
  get '/secret', to: 'secrets#show'
  post '/sessions/login', to: 'sessions#create'
  post '/sessions/logout', to: 'sessions#destroy'

end
