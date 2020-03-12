Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  get '/sessions/new', to: 'sessions#new'

  post '/sessions/login', to: 'sessions#create'
  post '/sessions/logout', to: 'sessions#destroy'

  get '/secret', to: 'secrets#show'

end
