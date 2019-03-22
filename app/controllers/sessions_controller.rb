class SessionsController < ApplicationController
  def create
    return redirect_to login_url if params[:name].blank?

    session[:name] = params[:name]
    redirect_to login_url
  end

  def destroy
    session.delete :name
    redirect_to login_url
  end
end
