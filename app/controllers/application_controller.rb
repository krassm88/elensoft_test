class ApplicationController < ActionController::Base
  include WardenHelper

  protect_from_forgery with: :exception

  helper_method :current_user, :warden
end
