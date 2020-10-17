class SecretsController < ApplicationController

    def show 
        return redirect_to "/login" unless session.include? :name 
    end

    def require_login
        return head(:forbidden) unless session.include? :name
    end
end