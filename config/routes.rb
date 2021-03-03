Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/', to: "secrets#welcome"
  get '/secret', to: "secrets#show"

  post '/logout', to: "sessions#destroy"

end
