class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def index
    if session[:name].nil? || session[:name].empty?
      redirect_to login_path
    else
      redirect_to welcome_path
    end
  end

  def current_user
    session[:name] ||= nil
  end

  private
  def require_login
    if current_user
      render :'show'
    else
      return head(:forbidden) unless session.include? :name
      redirect_to login_path
    end
  end

end
