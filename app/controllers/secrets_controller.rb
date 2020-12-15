class SecretsController < ApplicationController
	before_action :require_login
  	skip_before_action :require_login, only: [:login]


	def show
		session[]
	end

	def require_login
		redirect_to "/sessions/new" unless session.include? :name
	end

end