class SessionsController < ApplicationController

  def new
  end

  def show
  end

  def create
    login

    if username_blank?
      redirect_to new_sessions_path and return
    end
    redirect_to secrets_path
  end

  def destroy
    if logged_in?
      session.clear
    end
    redirect_to new_sessions_path
  end
end
