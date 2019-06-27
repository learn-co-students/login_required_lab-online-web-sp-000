Rails.application.routes.draw do
  root 'sessions#new'
  
  get '/secret', to: 'secrets#show'
  resources :sessions
  post '/', to: 'sessions#new'
  post '/session/destroy', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
