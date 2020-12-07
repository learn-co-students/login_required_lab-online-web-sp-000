class SessionsController < ApplicationController
  def new
  end

  def create
      if params[:name] == nil || params[:name] == ""
        redirect_to "/login"
      else
        session[:name] = params[:name]
        "Hi, #{params[:ame]}"
      end
    
  end

  def destroy
    session.delete :name
  end
end
