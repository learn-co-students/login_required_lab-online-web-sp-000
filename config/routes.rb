Rails.application.routes.draw do
  get 'secrets/b'
  get '/secret' => 'secrets#show'
  get '/sessions' => 'sessions#destroy'
  resources :sessions

  root 'sessions#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
``