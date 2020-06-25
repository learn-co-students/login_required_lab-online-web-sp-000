class SessionsController < ApplicationController
    # before_action :require_login, only: [:create]
    
    def create 
        if params[:name] == nil || params[:name].empty?
            redirect_to login_path 
        else 
            session[:name] = params[:name]
        end 
    end 

    def destroy 
        session.delete :name 
    end 

end
