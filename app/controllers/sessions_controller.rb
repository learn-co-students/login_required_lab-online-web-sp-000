class SessionsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/secrets/index'
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end

  def new
  end

end
