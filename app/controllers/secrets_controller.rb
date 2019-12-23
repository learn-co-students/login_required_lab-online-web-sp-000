class SecretsController < ApplicationController
  before_action :require_login

  def show
    #@user = User.find(session[:user_id])
  end



  private

  def require_login
    redirect_to '/login' unless current_user
    #redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
