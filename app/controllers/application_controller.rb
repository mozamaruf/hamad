class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :authenticate
  private
    def authenticate
      return if controller_name == "pages"
      if !logged_in?
        flash[:alert] = "Must be logged in!"
        redirect_to root_path
      end
	end
end
