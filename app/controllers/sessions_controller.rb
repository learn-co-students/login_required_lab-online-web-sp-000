class SessionsController < ApplicationController
  #before_action :require_logged_in
#  skip_before_action :require_logged_in, only: [:new]



  def new

  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/secrets/index'
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end


end
