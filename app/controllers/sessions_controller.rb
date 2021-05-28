class SessionsController < ApplicationController
  def new
  end

  def login
  end

  def create
    redirect_to login_path if session[:name].blank? || session[:name].nil?
    session[:name] = params[:name] if !params[:name].blank? || !params[:name].nil?   
  end

  def destroy
    session.delete :name unless session[:name].nil? 
  end
end
