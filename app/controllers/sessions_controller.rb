class SessionsController < ApplicationController
    before_action :require_login
    
    def new
    end

    def create 
    end

    def destroy
        session.delete :name
    end
end
