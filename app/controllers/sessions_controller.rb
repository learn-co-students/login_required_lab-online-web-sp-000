class SessionsController < ApplicationController

    def home
        if !current_user
            redirect_to '/login'
        end

    end

    def new
    
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
           session[:name] = params[:name]
           redirect_to '/home'
        end

    end

    def destroy
        if current_user
            session.delete :name
        else 
           redirect_to '/home'
        end
    end
end
