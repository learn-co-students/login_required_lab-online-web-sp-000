class SecretsController < ApplicationController
  #before_action :require_logged_in

  def show
    if current_user == nil || current_user == ""
      redirect_to '/login'
    end
  end

   private


   def require_login
     unless session.include? :name
     redirect_to :login
    end 
   end


end
