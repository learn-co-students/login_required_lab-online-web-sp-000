class SessionsController < ApplicationController

    def create
        if params[:name].present?
            session[:name] = params[:name]
        else 
            redirect_to :login
        end
    end

    def destroy
        session[:name] = nil
    end
end