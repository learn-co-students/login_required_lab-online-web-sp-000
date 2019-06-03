class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name]
      redirect_to '/'
    elsif params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to '/'
  end
end
