class SessionsController < ApplicationController
    def create 
       if params[:name].nil? || params[:name] == ""
           redirect_to '/login'
       elsif params[:name]
           session[:name] = params[:name]
        end 
    end 

    def destroy
        session.delete :name
    end 
end
