Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/login', to: 'secrets#show'
end
