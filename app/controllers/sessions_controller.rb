class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].empty?
      redirect_to '/session/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if !current_user
      redirect_to '/session/login'
    else
      session.delete :name
    end
  end

end
