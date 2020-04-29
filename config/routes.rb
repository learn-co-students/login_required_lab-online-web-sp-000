Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/show', to: 'secrets#show'
  post '/create', to: 'sessions#create'
  get '/new', to: 'sessions#new'
  get '/index', to: 'sessions#index'
  post '/destroy', to: 'sessions#destroy'
  root 'sessions#login'
end

#get '/login' => 'sessions#new'
#post '/login' => 'sessions#create'
#post '/logout' => 'sessions#destroy'

#get '/secret' => 'secrets#show'