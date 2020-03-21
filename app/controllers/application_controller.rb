class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user = session[:name]
  end

  private
 
  def require_login
    redirect_to login_path unless current_user
  end 

end


#current_user
#returns the name of the current user (FAILED - 1)
#returns nil if nobody is logged in (FAILED - 2)
