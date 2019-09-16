class SecretsController < ApplicationController
  def show
    if session[:name] == params[:name]
      redirect_to '/sessions/new'
    else
    end
  end
end
