class ApplicationController < ActionController::Base
  helper_method :current_user, :valid_name
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def valid_name?
    !(params[:name] == nil || params[:name] == "")
  end
end
