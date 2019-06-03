Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create]
  delete '/sessions', to: 'sessions#destroy'
  get '/secrets', to: 'secrets#show'
  root 'application#homepage'

end
