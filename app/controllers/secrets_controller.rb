class SecretsController < ApplicationController

    def show
        if session[:name].nil? || session[:name].blank?
            redirect_to '/login'
        end

    end

end