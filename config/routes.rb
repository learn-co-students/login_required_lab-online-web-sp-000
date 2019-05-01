Rails.application.routes.draw do
  get 'secrets/new'

  get 'sessions/new'

  root 'application#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/secret' => 'secrets#show'
  post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
