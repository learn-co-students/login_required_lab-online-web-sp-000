class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to show_secrets_path
    else
      redirect_to new_sessions_path
    end
  end

  def destroy
    if session.include? :name
      session.delete(:name)
    end
    redirect_to new_sessions_path
  end

end
