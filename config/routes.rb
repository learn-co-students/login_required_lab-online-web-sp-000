Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "application#hi"

  get '/login'=> 'sessions#new'
  post '/login'=> 'sessions#create'
  get '/login'=> 'sessions#destroy'

  get '/secrets'=> 'secrets#show'

end


