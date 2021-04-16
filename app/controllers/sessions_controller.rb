class SessionsController < ApplicationController 
    def new
    end

    def create
        if params[:name].nil? || params[:name].blank?
            redirect_to login_path
        else
            @user = params[:name]
            session[:name] = @user
            redirect_to root_path
        end
    end

    def destroy
        if !session[:name].nil?
            session.clear
            redirect_to login_path
        end
    end
end
