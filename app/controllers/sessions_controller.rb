class SessionsController < ApplicationController
  
  def new
    if current_user
      redirect_to '/'
    else

    end
  end

  def create
    if !params[:name] || params[:name] == ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/secret'
    end
  end

  def destroy
    if current_user
      session.delete :name
      redirect_to '/login'
    else
      redirect_to '/login'
    end
  end
end