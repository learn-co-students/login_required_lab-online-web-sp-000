Rails.application.routes.draw do
  get 'secrets/show'

  get '/', to: 'sessions#new'

  get 'sessions/new', to: 'sessions#new'

  get 'secrets/secret'

  post 'sessions/create', to: 'sessions#create'

  post 'sessions/logout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
