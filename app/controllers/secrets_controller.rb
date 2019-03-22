class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private
  def require_login
    redirect_to login_url unless session[:name]
  end
end
