class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if session[:name]
      session[:name]
    else
      nil
    end
  end

end
