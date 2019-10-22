class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
    redirect_to "/login" if !logged_in?
  end

  def current_user
    session[:name]
  end

  def logged_in?
    !session[:name].blank?
  end
end
