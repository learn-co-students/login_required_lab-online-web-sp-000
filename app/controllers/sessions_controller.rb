class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].empty?
    # redirects to login page if :name is nil
    # redirects to login page if :name is empty
      redirect_to '/login'
    else
    # sets session[:name] if :name is given
      session[:name] = params[:name]

    end
  end

  def destroy
    if params[:name].nil?
      session[:name] = params[:name]
    else
      session.delete :name
    end
  end

end
