Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'secrets/new'
  get '/secret' => 'secrets#show'
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/login' => 'sessions#destroy'

  root 'application#hello'
end
