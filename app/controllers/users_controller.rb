class UsersController < ApplicationController
  skip_before_action :require_logged_in, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    session.delete("user_id")
    @user.delete
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :money, :developer,
    :google_token, :google_refresh_token)
  end

end
