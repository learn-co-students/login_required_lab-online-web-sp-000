class SessionsController < ApplicationController

  def new
  end

  def create
    return redirect_to controller: 'sessions', action: 'new' if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end
end