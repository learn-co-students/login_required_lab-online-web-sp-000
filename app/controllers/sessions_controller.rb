class SessionsController < ApplicationController 
    
  def show 

  end

  def new 
      @session = Session.new
  end

  def create 
      if !params[:name].empty? 
          session[:name] = params[:name]
      else 
          redirect_to '/new'
      end
  end

  def destroy 
      if session[:name] 
          session.delete :name
      else 
          session[:name]
      end
  end
end