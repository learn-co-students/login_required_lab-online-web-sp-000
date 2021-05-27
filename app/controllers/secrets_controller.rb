class SecretsController < ApplicationController
    before_action :current_user

    def show
        if !current_user
            redirect_to login_path
        else
            render :hello
        end
    end
end