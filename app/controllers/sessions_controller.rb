class SessionsController < ApplicationController

  def new
    render :login
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/secrets/index'
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end


end
