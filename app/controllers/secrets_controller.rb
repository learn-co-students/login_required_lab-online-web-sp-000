class SecretsController < ApplicationController
  before_action :require_login

  def show
    @document = Document.find(params[:id])
  end

  def require_login
    return head(:forbidden) unless
      session.include? :username
  end
end
