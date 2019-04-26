class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def login
    session[:name] = params[:name]
  end

  def logged_in?
    !!current_user
  end

  def username_blank?
    params[:name].nil? || params[:name].blank?
  end

  def require_login
     return head(:forbidden) unless logged_in?
  end
end
