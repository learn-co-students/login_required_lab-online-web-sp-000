class SessionsController < ApplicationController

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to '/login'
    else
      session[:name]=params[:name]
      render :show
    end
  end

  def new
  end

  def destroy
    session.delete :name
  end

end
