class SecretsController < ApplicationController

  before_action :require_login

  def template
    render 'secrets/secret.html.erb'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
