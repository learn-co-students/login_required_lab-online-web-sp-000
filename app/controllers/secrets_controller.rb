class SecretsController < ApplicationController

  def show
    @user = current_user
     if !logged_in?
       redirect_to  new_sessions_path
     end
  end
end
