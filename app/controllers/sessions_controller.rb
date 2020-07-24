class SessionsController < ApplicationController

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end