class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new]

    def new
        
    end

    def show
    end

    private
 
    def require_login
      redirect_to :login unless session.include? :name
    end
end