class ProfileController < ApplicationController
  before_action :require_login
  def index
  end

  def require_login
    unless logged_in?
      redirect_to login_path, alert: "login dear"
    end
  end
end
