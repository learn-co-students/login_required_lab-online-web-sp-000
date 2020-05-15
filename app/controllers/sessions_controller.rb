class SessionsController < ApplicationController

    def new
    end

    def create
        if !current_user || current_user == ''
            redirect_to new_path
        end
        session[:name] = params[:name]
    end

    def destroy 
        if session[:name] && session[:name].length > 0 
            session.clear 
        end
    end
end
