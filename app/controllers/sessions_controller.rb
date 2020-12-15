class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/new'
    else 
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    session.clear
  end

end