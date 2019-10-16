Rails.application.routes.draw do

  root 'application#index'

  get '/login', to: 'sessions#new'

  get '/welcome', to: 'sessions#show'

  get '/secret', to: 'secrets#show'

  post '/create', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Prefix Verb URI Pattern       Controller#Action
#    root GET  /                 application#index
#   login GET  /login(.:format)  sessions#new
# welcome GET  /welcome(.format) secrets#show
#  create POST /create(.:format) sessions#create
