Rails.application.routes.draw do
  get '/', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/welcome', to: 'secrets#welcome'
  get '/show', to: 'secrets#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
