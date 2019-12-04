class SessionsController < ApplicationController

    def login
    end

    def create
        if params[:name].nil?
            redirect_to login_path
        else
            if params[:name].empty?
                redirect_to login_path
            else
                session[:name] = params[:name]
            end
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end