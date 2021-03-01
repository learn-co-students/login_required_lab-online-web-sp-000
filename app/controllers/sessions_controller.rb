class SessionsController < ApplicationController
    def new 
    end 

    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to "/"
        else
            redirect_to "/login" 
        end 
    end 

    def destroy
        if session[:name]
            session.delete :name 
        end 
    end 

    private 

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end
end 