class SessionsController < ApplicationController

     
    def new    
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
        else
            redirect_to new_path
        end
    end

    def index
        return head(:forbidden) unless session.include? :name
        @user = current_user
    end

    def destroy
        if current_user
            session.delete :name
        end
    end
     
      
end