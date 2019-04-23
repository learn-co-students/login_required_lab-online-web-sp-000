Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'show_secrets' => 'secrets#show'
  get 'new_sessions' => 'sessions#new'
  resources :sessions
  post 'destroy' => 'sessions#destroy'
end
