class SecretsController < ApplicationController #inherits from ...
    before_action :require_login

    def index
    end

    def show
    # return head(:forbidden) unless session.include? :user_id
    # @secret = Secret.find(params[:id])
    end

    def new
    end

    def create
    end

    def update
    end

    def destroy
    end

    private
    def require_login
        redirect_to '/login' unless session.include? :name
    end

end
