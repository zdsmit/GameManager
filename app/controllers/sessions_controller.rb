class SessionsController < ApplicationController
  skip_before_action :require_logged_in

  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by(email:params[:email])
    if @user.valid? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end

  def facebookAuth
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
 
    session[:user_id] = @user.id
 
    render 'welcome/homepage'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
  
end