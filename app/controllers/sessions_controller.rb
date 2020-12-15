class SessionsController < ApplicationController

	def new
		render '/sessions/login'
	end

	def create
		session[:name] = params[:name]
		if session[:name] == nil || session[:name].empty?
			redirect_to "/sessions/new"
		else
			redirect_to "/secrets/show"
		end
	end


	def destroy
		session.delete :name
		redirect_to '/sessions/new'
	end

end