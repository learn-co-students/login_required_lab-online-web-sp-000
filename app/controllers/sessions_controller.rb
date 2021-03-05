class SessionsController < ApplicationController

    def new
    end

    def create
       # binding.pry
        if (params[:name] && params[:name] != "")
            session[:name] = params[:name]
        else
            redirect_to login_path
        end
    end

    def destroy
        session[:name] = nil
    end

end