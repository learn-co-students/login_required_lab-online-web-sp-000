Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :sessions
  resource :secrets

  get 'secret', to: 'secret#show'
  get 'login', to: "sessions#new"
end
