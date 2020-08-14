class SessionsController < ApplicationController

    def new
    end
    
    def create
        # byebug
        if !params[:name].present? || params[:name].empty?
            redirect_to login_path
        else 
            session[:name] = params[:name]

            redirect_to root_path
        end
    end

    def destroy
        session.delete :name
    end

end
