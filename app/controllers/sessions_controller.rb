class SessionsController < ApplicationController

    def home
        redirect_to '/login' unless current_user
    end

    def new

    end

    def create
        if params[:name] == '' || nil
            redirect_to '/login'
            return
        end

        session[:name] = params[:name]
        redirect_to '/'
    end   

    def destroy
        session.delete :name
        redirect_to '/'
    end
end