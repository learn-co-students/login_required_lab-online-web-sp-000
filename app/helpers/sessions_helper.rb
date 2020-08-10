module SessionsHelper

    def hello
      redirect_to controller: 'sessions', action: 'new' unless session[:name]
    end
  
    def current_user
      session[:name]
    end
  
    private
  
    def require_logged_in
      redirect_to controller: 'sessions', action: 'new' unless current_user
    end
  end