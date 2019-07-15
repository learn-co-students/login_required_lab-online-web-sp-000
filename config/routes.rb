Rails.application.routes.draw do

  get '/', to: 'application#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/show', to: 'secrets#show'
  get '/welcome', to: 'application#welcome'
  post '/logout', to: 'sessions#destroy'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
