class SecretsController < ApplicationController
  before_action :require_login

  def show
    
  end

  def destroy
  end

  private
  def require_login
    # return head(:forbidden) unless session.include? :user_id
    redirect_to '/login' if current_user == nil
  end
end
