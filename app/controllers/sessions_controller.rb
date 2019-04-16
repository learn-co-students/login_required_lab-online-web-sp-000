class SessionsController < ApplicationController

  def new
  end

  def create
    if !params.include? :name
      redirect_to new_path
    elsif params[:name].empty?
      redirect_to new_path
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end

  def destroy
    if session.include?(:name)
      session.delete(:name)
    end
    redirect_to show_path
  end

end
