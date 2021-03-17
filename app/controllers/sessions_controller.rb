class SessionsController < ApplicationController
   def new
   end
   
   def create
      if !params[:name] || params[:name].empty?
         return redirect_to login_path
      elsif
         session[:name] = params[:name]
         redirect_to root_path
      end
   end

   def destroy
      if current_user
         session.delete :name
      end
      redirect_to login_path
   end
end