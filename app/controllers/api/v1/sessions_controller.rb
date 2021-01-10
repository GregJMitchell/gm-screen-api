class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:user][:username])
    if user&.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: UserSerializer.new(user).serializable_hash.to_json
    else
      error = 'Email and/or password is incorrect'
      render json: error
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
