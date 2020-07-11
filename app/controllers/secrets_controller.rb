
class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = User.find(params[:id])
  end

  def index
  end

  def create
    @user = User.create(user_id: user_id)
  end

  private

    def require_login
      return head(:forbidden) unless
      session.include? :user_id
    end
    
end
