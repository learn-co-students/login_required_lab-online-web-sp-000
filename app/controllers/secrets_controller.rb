class SecretsController < ApplicationController
    def show
        if !logged_in?
            redirect_to '/login'
        end
    end
end