class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :admin?
  
  protected
  
  def authorize
    unless admin?
      [:alert => 'User was successfully updated.']
      # redirect_to root_path
      false
    end
  end
  
  def admin?
    session[:password] == 'foobar'
  end
  
end
