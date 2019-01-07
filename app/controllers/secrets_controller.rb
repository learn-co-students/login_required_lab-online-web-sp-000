class SecretsController < ApplicationController
  before_action :require_login

  def require_login
    redirect_to new_session_path unless current_user
  end
  
  def new
  end

  def create
  end

  def show
  end

  def index
  end
end
