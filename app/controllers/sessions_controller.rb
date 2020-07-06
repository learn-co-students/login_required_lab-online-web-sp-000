class SessionsController < ApplicationController
    def new
        
    end

    def create 
        if params[:name] == ""
            redirect_to '/'
        elsif params[:name] != ""
            session[:name] = params[:name]
        end 
    end

    def destroy 
        if session[:name]
            session.delete :name
        end
    end
end
