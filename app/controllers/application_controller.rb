class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user
  def hello
    @user = session[:name]
    if @user.nil?
      redirect_to '/login'
    end
  end

  

  def current_user
    session[:name]
  end

end
