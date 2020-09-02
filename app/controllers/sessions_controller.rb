class SessionsController < ApplicationController
	def new
	end

	def create
		redirect_to '/new' if !params[:name] || params[:name].empty?
		session[:name] = params[:name]
	end

	def destroy
		session.delete :name
	end
end
