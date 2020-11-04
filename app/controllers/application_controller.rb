class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
    session[:name]
   
  end
  
  def logged_in?
    session[:name] ? true : false
end

def require_login
  if params[:name] 
    if !params[:name].empty?
    session[:name] = params[:name]
    
    end
end
    if !logged_in?
      redirect_to '/sessions/new'
    end
end

end
