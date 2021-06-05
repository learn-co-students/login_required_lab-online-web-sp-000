class SessionsController < ApplicationController
  def new
    
  end

  def create
    require_login
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end
end