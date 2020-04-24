class SecretsController < ApplicationController

    def show
        if current_user
            render 'secret'
        else
            redirect_to new_path 
        end
    end
     
     
      
end