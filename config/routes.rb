Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/reveal' => "secrets#show"
  resources :sessions, only: [:new, :create, :index]
  post '/logout' => "sessions#destroy"

  root 'sessions#index'
end
