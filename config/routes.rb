Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/login' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
