Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/secret', to: 'secrets#show'

  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'

  get '/welcome', to: 'sessions#welcome'
  post '/logout', to: 'sessions#destroy'
end
