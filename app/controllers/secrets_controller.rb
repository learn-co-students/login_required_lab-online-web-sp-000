class SecretsController < ApplicationController
    before_action :current_user
    
    def show
        redirect_to '/login' if current_user==nil
    end
end