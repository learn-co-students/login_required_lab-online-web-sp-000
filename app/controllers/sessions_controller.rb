class SessionsController < ApplicationController
    
    def new
      if current_user
        redirect_to controller: 'application', action: 'index'
      end
    end
  
    def create
      if invalid
        redirect_to '/'
      else
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'index'
      end
    end
  
    def destroy
      session.delete :name
      redirect_to '/'
    end
  
    def invalid
      params[:name].empty? || !params[:name]
    end

end