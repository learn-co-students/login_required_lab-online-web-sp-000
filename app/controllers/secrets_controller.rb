class SecretsController < ApplicationController
  def show
    redirect_to "/login" if !logged_in?
  end
end
