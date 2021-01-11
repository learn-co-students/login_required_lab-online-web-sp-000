Rails.application.routes.draw do
get 'secrets/new'

root 'application#hello'
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

get '/secret' => 'secrets#show'

end
