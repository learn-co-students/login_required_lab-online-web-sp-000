class SecretsController < ApplicationController
    before_action :check_auth

    def show
    end

    private

    def check_auth
        redirect_to(login_path) unless session.include? :name
    end
end