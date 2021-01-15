class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to root_path if params[:name].nil? || params[:name].blank?
    session[:name] = params[:name]
    redirect_to secrets_path
  end

  def destroy
    session.delete :name unless session[:name].nil?
    redirect_to root_path
  end
end
