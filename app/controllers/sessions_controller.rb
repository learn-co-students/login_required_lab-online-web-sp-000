class SessionsController < ApplicationController
  def new
  end

  def create
    unless params[:name] && !params[:name].empty?
      redirect_to new_sessions_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete(:name) if current_user
  end
end
