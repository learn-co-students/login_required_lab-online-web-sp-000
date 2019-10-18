class SessionsController < ApplicationController
  before_action :require_login, only: [:show]

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to welcome_path
    end
  end

  def show
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end
end
