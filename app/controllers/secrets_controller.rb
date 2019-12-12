class SecretsController < ApplicationController
  before_action :require_login

  def show
    # redirect to /login if not logged in
    # should show secret if logged in

  end

end
