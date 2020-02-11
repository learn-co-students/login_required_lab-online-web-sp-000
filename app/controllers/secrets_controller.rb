class SecretsController < ApplicationController
    before_action :logged_in?
    
    def show
        # if session[:user_id]
        # else 
        #     redirect_to '/login'
        # end
    end 

end