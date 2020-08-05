class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:show]

    def welcome
    end

    def show
        if current_user.nil?
            redirect_to '/'
        end
    end

    private
 
    def require_login
      return head(:forbidden) unless session.include? :name
    end

end