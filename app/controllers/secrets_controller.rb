class SecretsController < ApplicationController 
    before_action :require_login
    skip_before_action :require_login, only: [:show]
    def show
         if session[:name] != nil
             if  session[:name].empty?  
        p "testing empty", session[:name]
                redirect_to '/login'
              
             else
            p  "testing not empty", session[:name]

                # session[:name] = params[:name]
        #         redirect_to '/'
             end
         else
        p "testing nil", session[:name]  
              redirect_to '/login'
         end
    end
    

    private
 
    def require_login
      return head(:forbidden) unless session.include? :user_id
    end
  
end