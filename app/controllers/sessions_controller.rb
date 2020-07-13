class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create

    #session[:name] = params[:name]

    if params[:name].nil? || params[:name].empty?
      # redirect_to '/login'
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'welcome'
    end
  end

  def destroy

    if !session[:name].nil?
      session.delete :name  
    end
  end
end
