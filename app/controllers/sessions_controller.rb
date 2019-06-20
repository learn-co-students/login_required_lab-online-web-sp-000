class SessionsController < ApplicationController
  def create
    if params[:name].blank?
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if !session[:name].blank? then session.delete :name end 
  end
end
