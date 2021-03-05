class SecretsController < ApplicationController
    
    def show
        if (session[:name])
        else
            redirect_to login_path
        end
    end



end