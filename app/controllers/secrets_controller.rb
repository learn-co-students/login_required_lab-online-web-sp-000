class SecretsController < ApplicationController
  before_action :signed_in
  def show

  end

  def signed_in
     redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end