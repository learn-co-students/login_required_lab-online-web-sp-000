Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'secrets#index'
  get '/login' => 'sessions#new'  
  
  get '/show' => 'secrets#show'
  
  post '/create' => 'sessions#create'
  post '/destroy' => 'sessions#destroy'
  
  
  
  #resources :secrets, only: [:show]
end
