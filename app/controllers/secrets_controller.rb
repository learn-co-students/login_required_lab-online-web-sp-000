require 'pry'

class SecretsController < ApplicationController

  def show
    if !session.include? :name
      redirect_to new_path
    else
      render 'secret'
    end
  end

end
