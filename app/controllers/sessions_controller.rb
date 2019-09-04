class SessionsController < ApplicationController


    def new

    end

    def create
        redirect_to '/login' if params[:name].nil? || params[:name].empty?
        session[:name] = params[:name]
    end

    def destroy
        session.delete :name
    end

end
