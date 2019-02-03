class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = session[:name]
  end


end
