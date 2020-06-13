class SessionsController < ApplicationController

    def new
        render :login
    end

    def create
        if params[:name].empty?
            redirect_to '/new'
        else
            session[:name] = params[:name] 
            render :welcome
        end
    end

    def destroy
        session.delete :name
    end
end