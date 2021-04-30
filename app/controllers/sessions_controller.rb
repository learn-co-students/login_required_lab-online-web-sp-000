class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def index
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end

end
