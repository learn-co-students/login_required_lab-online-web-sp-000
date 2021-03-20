Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  get '/user', to: 'secrets#show'
  get '/user/secrets', to: 'secrets#secrets'

  root 'session#new'
end
