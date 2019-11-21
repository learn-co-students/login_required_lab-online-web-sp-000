class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to login_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name if session[:name]
  end

end
