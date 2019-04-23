class SecretsController < ApplicationController
  before_action :require_login

  def show
    if session[:name].present?
      render 'secrets/show'
    else
      redirect_to new_sessions_path
    end
  end

  private

  def require_login
    redirect_to new_sessions_path unless current_user
  end
end
