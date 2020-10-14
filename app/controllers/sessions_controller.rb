class SessionsController < ApplicationController
    def index

    end

    def new

    end

    def create
        if params[:name].empty?
            redirect_to '/'
        else
            session[:name] = params[:name]
            redirect_to secrets_path
        end
    end

    def destroy
        session.delete :name if !session[:name].nil?
        redirect_to login_path
    end

    # private
    # def session_params
    #     params.permit[:name]
    # end



end