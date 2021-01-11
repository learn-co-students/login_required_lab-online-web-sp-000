class SessionsController < ApplicationController

   def create
        if params[:name].blank?
            redirect_to '/'
        else 
            session[:name] = params[:name]
        end
   end 

    def destroy
        session[:name] = nil
    end

end