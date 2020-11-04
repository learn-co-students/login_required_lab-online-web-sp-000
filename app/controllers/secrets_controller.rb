class SecretsController < ApplicationController
  before_action :require_login

    def show
      @name = session[:name]
      render '/sessions/show'
    end

end
