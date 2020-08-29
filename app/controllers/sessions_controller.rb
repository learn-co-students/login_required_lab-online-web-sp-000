class SessionsController < ApplicationController
  before_action :require_login, only: [:show]

  def index
    if current_user
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end


  def new
  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end
  end

  def destroy
    if current_user
      session.delete :name
      redirect_to '/login'
    end
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end



end
