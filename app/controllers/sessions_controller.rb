class SessionsController < ApplicationController
    def create
        if !params[:name] || params[:name].empty?
            redirect_to "/sessions/new"
        else
            session[:name] = params[:name]
            redirect_to "/secrets/show"
        end
    end

    def new
    end

    def destroy
        session.delete :name
    end
end
