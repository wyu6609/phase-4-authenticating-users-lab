class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end

  def destroy
    user = User.find_by(username: params[:username])
    user.destroy
    head :no_content
  end
end
