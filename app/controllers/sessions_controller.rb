class SessionsController < ApplicationController
    
    def new
    end

    def create
        login(params[:name])

        if current_user
            redirect_to 'secret'
        else
            redirect_to '/sessions/new'
        end
    end

    def destroy
        session.delete :name
    end

    private

    def login(name)
        if name && !name.empty?
            session[:name]=name
        end
    end

    def logged_in?
        session[:name] && !session[:name].empty?
    end

end