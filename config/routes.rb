Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :sessions, only: [:show, :index, :new, :create, :destroy]
  resource :secrets, only: [:show]
  get '/sessions/destroy', :to => 'sessions#destroy'
end
