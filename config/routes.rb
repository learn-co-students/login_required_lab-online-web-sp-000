Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  get  '/secret' => 'secrets#show'
  post '/logout' => 'sessions#destroy'
end
