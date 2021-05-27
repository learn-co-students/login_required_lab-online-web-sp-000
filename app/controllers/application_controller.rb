class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
      # byebug
      session[:name]
      # if it's the current user then they're logged in, so a session has been created
  end
end
