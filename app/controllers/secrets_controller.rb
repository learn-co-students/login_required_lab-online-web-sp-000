class SecretsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    render "/secrets/index"
  end

  def show

  end

  private


   def require_login
     unless session.include? :name
     redirect_to :login
    end
   end



end
