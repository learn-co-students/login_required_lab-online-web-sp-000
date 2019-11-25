class SessionsController < ApplicationController
   

    def new
    end

    def create
        #binding.pry

        if params[:name].nil? || params[:name] == ""
            redirect_to  login_path
            
        else
            session[:name] = params[:name]
            redirect_to secret_path
        end
    end

   
    def destroy
        #binding.pry

        if session[:name] == nil
            reset_session
            redirect_to login_path
        elsif current_user
            reset_session
            redirect_to login_path
        end
    end
    
   

end