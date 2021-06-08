class SessionsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: %i~new destroy~
 
  def destroy
    session.delete :name
    redirect_to login_path
  end
 
  def new
  end
 
  def create 
      session[:name] = params[:name]
      redirect_to show_path
  end
 
  private
 
  def require_login
    return redirect_to login_path if !params[:name].present? 
  end

end

