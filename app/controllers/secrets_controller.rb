class SecretsController < ApplicationController 
    before_action :require_login

    def show 
    end

    def require_login
        unless session.include? :name
            redirect_to '/login'
        end
    end

end
