class SecretsController < ApplicationController
  before_action :show_secret?

  def new
  end

  def show
  end

  private

  def show_secret?
    redirect_to new_session_path unless session.include? :name
  end

end
