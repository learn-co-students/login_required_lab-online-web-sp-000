class SessionsController < ApplicationController
  
  before_action :require_login
  skip_before_action :require_login, only: [:index, :new, :create]

  def index
  end
    
  def new
  end

  def create

    return redirect_to '/sessions/new' if !params[:name] || params[:name].empty?
    session[:name] = params[:name]

    render :show
  end

  def show

  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'index'
  end
end
