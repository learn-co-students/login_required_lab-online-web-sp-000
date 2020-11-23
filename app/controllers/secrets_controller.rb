class SecretsController < ApplicationController
  before_action :require_login
  
  def show
    render :secret
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end
end
