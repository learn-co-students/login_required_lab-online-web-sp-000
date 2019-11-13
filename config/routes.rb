Rails.application.routes.draw do

  root 'sessions#new'
  get '/sessions/new', to: "sessions#new"
  get '/secret', to: 'secrets#show'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
