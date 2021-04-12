
class SecretsController < ApplicationController
    before_action :login_check
  
    def welcome
    end
  
    def show
    end
  
  private
  
    def login_check
      if current_user == nil
        redirect_to '/login'
      end
    end
  
  end