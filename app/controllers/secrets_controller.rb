class SecretsController < ApplicationController
  before_action :logged_in?
  def show
    
  end

  def logged_in?
    if current_user
      @user = current_user
    else
      redirect_to '/login'
    end
  end
end