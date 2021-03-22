class SessionsController < ApplicationController
  def new
    if session[:name]
      redirect_to '/secrets/show'
    end

  end

  def create
      if session[:name]
        redirect_to '/secrets/show'
      elsif params[:name] == nil || params[:name] == ''
          redirect_to '/'
      else
          session[:name] = params[:name]
          redirect_to '/secrets/show'
      end

  end

  def destroy
      session.delete :name
      redirect_to "/sessions/new"
  end

end
