class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      render :welcome
    end
  end

  def destroy
    if !current_user.nil?
      session.destroy
    end
    redirect_to '/'
  end

  def welcome
    if current_user.nil?
      redirect_to '/login'
    end
  end

end
