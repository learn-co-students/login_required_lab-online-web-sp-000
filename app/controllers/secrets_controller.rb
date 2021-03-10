class SecretsController < ApplicationController

  before_action :auth_required

  def index
    render "/secrets/index"
  end

  def show
  end

end