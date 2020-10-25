class SecretsController < ApplicationController
  before_action :require_login

  def new
  end

  def show
    #binding.pry
    if !current_user
      redirect_to '/session/login'
    end
  end
end
