class SecretsController < ApplicationController
  #before_action :require_logged_in

  def index
    render "/secrets/index"
  end

  def show
    if current_user == nil || current_user == ""
      redirect_to '/'
    end
  end

   private


   def require_login
     unless session.include? :name
     redirect_to :login
    end
   end


end
