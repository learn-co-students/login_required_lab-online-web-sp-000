Rails.application.routes.draw do

  resources :sessions

  get 'secrets/show'
  post '/logout' => 'sessions#destroy'
  root 'sessions#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
