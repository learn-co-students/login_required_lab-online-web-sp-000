class SessionsController < ApplicationController
  def new
  end

  def create
    require_login
    session[:name] = params[:name] 
  end

  def destroy
    require_login
    session.delete :name
  end
end
