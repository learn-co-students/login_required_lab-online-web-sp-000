class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def hello
    if !current_user
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def current_user
    if session[:name].present?
      @user = session[:name]
    end
  end

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless session.include? :name
  end
end
