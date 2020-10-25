class SecretsController < ApplicationController
  def new
  end

  def show
    #binding.pry
    if !current_user
      redirect_to '/session/login'
    end
  end
end
