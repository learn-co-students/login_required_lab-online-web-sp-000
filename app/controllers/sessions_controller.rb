class SessionsController < ApplicationController
    def new
    end

    def home
    end
    
    def create
        return redirect_to '/new' if params[:name].nil? || params[:name].empty?
        session[:name] = params[:name]
        redirect_to '/home'
    end

    def destroy
        session[:name] = nil
        redirect_to '/new'
    end
end