class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
  end


  private

  def current_user
    session[:name]
  end
end
