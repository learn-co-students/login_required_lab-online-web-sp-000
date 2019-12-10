Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root to: 'sessions#home'
    get '/login', to: 'sessions#new'
    post '/create', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy'

    get '/secrets/show', to: 'secrets#show'

end
