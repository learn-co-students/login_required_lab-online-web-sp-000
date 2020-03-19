class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to 'show'
    end
  end

  def destroy
    if session[:name] != nil
      session.clear
    end
  end

  private

  def sessions_params
    params.require(:session).permit(:name)
  end

  def require_login
    if !session.include? :name || session[:name].blank? || session[:name] == nil
      redirect_to controller: 'sessions', action: 'new'
    end
  end


end
