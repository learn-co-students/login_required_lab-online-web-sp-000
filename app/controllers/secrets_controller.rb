class SecretsController < ApplicationController
  before_action :require_login
  def show
  #   if !current_user
  #     redirect_to controller: 'sessions', action: 'new'
  #   else
  #     redirect_to controller: 'secrets', action: 'show'
  # end
end

  private
  def require_login
    #return head(:forbidden) unless session.include? :name if
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end
end
