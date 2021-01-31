class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  def index
  end

  def create
  end

  private

  def require_login
    if current_user.blank?
      redirect_to '/login'
    end
  end


end
