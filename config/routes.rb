Rails.application.routes.draw do
  root 'sessions#create'
  resources :sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secrets' => 'secrets#show'
end
