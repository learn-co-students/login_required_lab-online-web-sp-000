class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def require_login
    if !session.include? :name || session[:name].blank? || session[:name] == nil
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
