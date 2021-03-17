class SessionsController < ApplicationController
  def hello
  end

  def new
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end