class SessionsController < ApplicationController

    def new
    end

    def create            
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name] #can't do current_user, it will return nil. can't set nil =... but if u make it not return nil u get errors for other tests

            render template: "sessions/welcome"
        else
            redirect_to new_session_path
        end

    end



    def destroy
        session.delete :name if session[:name] && !session[:name].empty?
    end


end
