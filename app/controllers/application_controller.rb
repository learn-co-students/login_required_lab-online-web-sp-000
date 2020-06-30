class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if !current_user
      redirect_to '/login'
    else
      redirect_to '/secret'
    end
  end

  def current_user
    session[:name] || nil
  end

  private

  def require_login
    redirect_to '/login' unless current_user
  end

end

