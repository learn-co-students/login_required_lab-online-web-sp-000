Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'secrets#index'

  get 'secrets/show'

  post 'secrets/show'

  get 'sessions/new' => 'login'

  post 'sessions/create'

  post 'sessions/destroy'

end
