class SecretsController < ApplicationController
  before_action :require_login

  def new
  end

  def show
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
