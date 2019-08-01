class SessionsController < ApplicationController
    def new
        #nothing to do here
    end

    def home 
    end
  
    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to login_path
          else 
            session[:name] = params[:name]
            redirect_to root_path
      
      end
    end
  
    def destroy
        session[:name] = nil
        redirect_to root_path
    end
  
end