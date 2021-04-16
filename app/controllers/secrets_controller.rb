class SecretsController < ApplicationController
    before_action :current_user

    def homepage
        redirect_to root_path
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