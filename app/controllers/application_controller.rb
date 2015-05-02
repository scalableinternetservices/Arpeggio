class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    # check if logged in
  end

  rescue_from CanCan::AccessDenied do | exception |
    flash[:error] = exception.message
    redirect_to root_url
  end
end
