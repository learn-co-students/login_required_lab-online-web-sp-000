class SessionsController < ApplicationController
    def login
        if current_user == nil || current_user.empty?
            redirect_to "/login"
        else
            session[:name] = current_user
        end
    end

    def create
        if params[:name] == nil || params[:name].empty?
            redirect_to "/login"
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
    end

end