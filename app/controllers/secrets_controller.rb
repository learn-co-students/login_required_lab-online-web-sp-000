class SecretsController < ApplicationController
  def show
    if !logged_in?
      redirect_to "/login"
    end 
  end

  private
  def logged_in?
    !!current_user ? true : false
  end
end
