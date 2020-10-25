Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :secret

  resource :session do
    get 'login', to: 'sessions#new'
  end

end
