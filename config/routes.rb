Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/secrets/:id', to: 'secrets#show'
  resources :secrets, only: [:show]
  resources :sessions
end
