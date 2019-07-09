class SessionsController < ApplicationController
    def new

    end

    def create
        if params[:name] == "" || params[:name].nil?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/home'
        end
    end

    def home
        @user = current_user
    end

    def destroy
        session.delete :name
    end
end