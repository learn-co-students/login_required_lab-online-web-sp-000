Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :secret

  root to: 'application#hello'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/destory', to: 'sessions#destroy'

  resource :session do
    get 'login', to: 'sessions#new'
  end

end
