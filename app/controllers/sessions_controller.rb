class SessionsController < ApplicationController

  def new
    session[:name] = ''
    render 'sessions/login'
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
    end

  end

  def destroy
    session[:name] = nil unless session[:name].nil?
  end

end