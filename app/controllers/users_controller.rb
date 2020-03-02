class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    user[:session_id] = @user.id
    redirect_to games_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :money)
  end

end
