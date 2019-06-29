class SessionsController < ApplicationController

  # get '/login', to: 'sessions#new'
  def new
  end

  # post '/create', to: 'sessions#create'
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end 
  end

  # post '/destroy' to: 'sessions#destroy'
  def destroy
    session.delete(:name) if session[:name]
    redirect_to '/login'
  end

end
