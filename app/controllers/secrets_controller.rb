class SecretsController < ApplicationController

  before_action :redirect_unless_logged_in

  def show
  end


  private

  def logged_in?
    !!current_user
  end

  def redirect_unless_logged_in
    unless session.include? :name
      redirect_to "/login", alert: "You need to login to access this page"
    end
  end

end
