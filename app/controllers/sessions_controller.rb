class SessionsController < ApplicationController

    def new # sign up
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
        #byebug
    end

    def destroy
        if current_user
            session.destroy
        end
    end
end