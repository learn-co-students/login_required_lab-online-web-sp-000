class SecretsController < ApplicationController
  before_action :require_login
  def show
    @current_user = current_user
  end

  def secret

  end


  private

  def require_login
    redirect_to '/' unless session.include? :name
  end
end
