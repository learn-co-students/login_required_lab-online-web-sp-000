class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def index 
  end 
  
  def new 
  end 

  def create
    if !name_field_empty?
      set_session
      redirect_to '/sessions/index'
    else   
      redirect_to '/sessions/new'
    end 
  end

  def destroy
    if set_session 
      current_user.destroy 
    end 
  end

  private 
  def name_field_empty? 
    params[:name].nil? || params[:name] == ''
  end 

  def set_session 
    session[:name] = params[:name] 
  end 

  
end
