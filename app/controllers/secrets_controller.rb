class SecretsController < ApplicationController
    before_action :require_login

    def show 
        # should redirect to login if you're not logged in (FAILED - 1)
        # should show you the secret if you're logged in (FAILED - 2)
        redirect_to '/secrets/show'
    end

    private

    def require_login
        redirect_to '/login' unless current_user
    end
end
