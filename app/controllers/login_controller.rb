class LoginController < ApplicationController
  def index
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:uuid]=user.uuid
      redirect_to profile_path
    else
      flash.now[:alert]="Invalid email or password"
      render :index
    end
    # Rails.logger.debug "User not found: #{params[:username]}"
    # Rails.logger.debug "User not found: #{params[:password]}"
  end

  def destroy
    session[:uuid]=nil
    redirect_to root_path, notice: "Logged out successfully"
  end
end
