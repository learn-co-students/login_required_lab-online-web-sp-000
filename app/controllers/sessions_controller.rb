class SessionsController < ApplicationController
  def new 
  end 

  def create
    # byebug
    if !name_field_empty?
      session[:name] = params[:name]
      redirect_to '/'
    else   
      redirect_to '/sessions/new'
    end 
  end

  def destroy
  end

  private 
  def name_field_empty? 
    params[:name].nil? || params[:name] == ''
  end 

  
end
