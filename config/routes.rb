Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  resources :sessions, only: %i[create destroy new]
  get '/secrets/show', to: 'secrets#show', as: 'secret_show'
  post '/sessions/destroy', to: 'sessions#destroy', as: 'destroy_session'
end
