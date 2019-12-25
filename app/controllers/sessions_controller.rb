class SessionsController < ApplicationController

    before_action: require_login, only: [:index]

    def index
    
    end

    def show 

    end

end