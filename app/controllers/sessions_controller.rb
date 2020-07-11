class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      redirect_to controller: 'secrets', action: 'index'
    end
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
    redirect_to controller: 'secrets', action: 'index'
  end
end
