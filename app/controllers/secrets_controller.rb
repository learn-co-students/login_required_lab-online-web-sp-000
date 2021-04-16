class SecretsController < ApplicationController
    before_action :current_user

    def homepage
        @user = session[:name]
        render '/sessions/index'
    end
    
    def show
        @user = session[:name]
        if @user.nil?
            redirect_to login_path
        else
            render :show
        end
    end 
end