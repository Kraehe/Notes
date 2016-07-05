class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Forces a user that isn't logged in to login/sign up on all routes.
  before_action :authenticate_user!
end
