class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  before_action :require_login 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name] 
  end 

  def require_login 
    unless logged_in?
      flash[:error] = "You must be logged in"
      redirect_to '/sessions/new'
    end
  end 

  def logged_in? 
    session.include? :name 
  end 

end
