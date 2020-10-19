  Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'show' => 'secrets#show'
    post '/create', to: 'sessions#create'
    get 'new', to: 'sessions#new'
    get 'home', to: 'sessions#home'
    delete 'sessions', to: 'sessions#destroy'

    # nested resource for posts
end