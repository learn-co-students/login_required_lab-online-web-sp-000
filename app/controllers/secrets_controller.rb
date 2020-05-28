class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:show]

    def show
      if current_user 
        render :show
      else
        redirect_to '/login'
      end
    end
     
      def index
      end
     
      def create
        @user = User.create(user_id: user_id)
      end
     
     

    private
 
  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
