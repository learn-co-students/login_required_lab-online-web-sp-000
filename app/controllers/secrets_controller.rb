class SecretsController < ApplicationController
    before_action :require_login

    def show
        if session[:name]
            
        else
            redirect_to controller: 'sessions', action: 'new'
        end
    end



    private
    def require_login

    end
end
