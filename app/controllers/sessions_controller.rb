class SessionsController < ApplicationController

  before_action :login_required
  skip_before_action :login_required, only: [:new, :create]

  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/login'
    else
    session[:name] = params[:name]
    redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  def show
  end

end
