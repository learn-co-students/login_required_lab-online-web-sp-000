class SessionsController < ApplicationController

    def new
    end

    def create 
        if !params[:name].empty? && !params[:name].nil?
            session[:name] = params[:name]
            redirect_to "/home"
        else 
            redirect_to '/'
        end
    end 

    def destroy
        if session[:name].nil?
            session[:name] = nil
        else 
            session.delete :name 
            redirect_to "/"
        end  
    end

    def show 
    end
end
