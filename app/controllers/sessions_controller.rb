class SessionsController < ApplicationController

def new
end

def create
  if params[:name].nil? || params[:name] == ""
    redirect_to '/login'
  end
  session[:name] = params[:name]
end

def destroy
  if session[:name].nil?
  else
    session.delete :name
  end
end

end 
