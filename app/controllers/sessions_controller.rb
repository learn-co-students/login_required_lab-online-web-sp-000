class SessionsController < ApplicationController
  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to sessions_new_path
    end
  end

  def new

  end

  def destroy
    session.delete :name
    redirect_to '/'
  end


end
