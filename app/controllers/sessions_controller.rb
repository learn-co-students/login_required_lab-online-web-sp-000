class SessionsController < ApplicationController
    def index
        redirect_to login_path unless session[:name]
    end

    def new
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end