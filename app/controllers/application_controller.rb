class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def index
  end

  def current_user
    session[:name]
  end

  def logged_in?
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
