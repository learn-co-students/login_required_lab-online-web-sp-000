Rails.application.routes.draw do
  get 'secrets/show'

  get 'sessions/index' => 'sessions#index'

  get 'sessions/new' => 'sessions#new'

  # get 'sessions/create' => 'sessions#create'

  get 'sessions/destroy' => 'sessions#destroy'

  post 'sessions/create' => 'sessions#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
