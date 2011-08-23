class SessionsController < ApplicationController
  
    def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  def create
    session[:password] = params[:password]
    flash[:notice] = "Successfully logged in"
    redirect_to "/users"
  end

  def destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    redirect_to '/users'
  end
end