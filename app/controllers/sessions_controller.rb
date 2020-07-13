class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create

    if params[:name].nil? || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to controller: 'sessions', action: 'welcome'
    end
  end

  def destroy

    if !session[:name].nil?
      session.delete :name  
    end
  end

end
