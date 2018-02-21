class SessionsController < ApplicationController
  before_action :check_current_user, only: [:new]

  def new
  end

  def create
    warden.authenticate!
    redirect_to root_path
  end

  def logout
    warden.logout
    redirect_to root_path
  end

  private

  def check_current_user
    redirect_to root_path if current_user
  end
end
