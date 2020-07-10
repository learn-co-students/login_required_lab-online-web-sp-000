class SessionsController < ApplicationController
  def new 
  end 

  def create
    byebug
    if !logged_in? || name_field_empty?
      redirect_to '/sessions/new'
    else
      byebug
      current_user = params[:name]
    end 
  end

  def destroy
  end

  private 
  def name_field_empty? 
    params[:name].nil? || params[:name] == ''
  end 
  
end
