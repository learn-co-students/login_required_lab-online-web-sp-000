class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
  def new
      # nothing to do here!
  end

  def create
      if params[:name] == nil || params[:name] == ""
          redirect_to '/login'
      else
          session[:name] = params[:name]
          redirect_to '/'
      end
  end
  def destroy
      session.delete :name
      redirect_to '/login'
   end

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end