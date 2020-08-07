class SessionsController < ApplicationController
  def new
  end

#login action
#redirects to login if name is nil or empty
#creates session is name is given
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to :login
    end
  end

#logout action
# clears session if name was set 
  def destroy
    if session[:name].present?
      session.delete :name
    end
    redirect_to :login
  end
end
