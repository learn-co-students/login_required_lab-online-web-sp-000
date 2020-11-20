Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'secrets/show'
  resources :sessions, only: [:create]
  get 'destroy' => 'sessions#destroy'
  get 'login' => 'sessions#new', as: 'new_session'
  root 'application#index'

  resources :session
  
end
