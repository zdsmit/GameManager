class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :require_logged_in, except: [:new, :create, :homepage]

  def user_logged_in?
    !!current_user
  end

  def developer_logged_in?
    !!current_developer
  end

  private

  def require_logged_in
    redirect_to root_path unless user_logged_in? || developer_logged_in?
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_developer
    @current_developer ||= Developer.find(session[:developer_id]) if session[:developer_id]
  end
  helper_method :current_user 
  helper_method :current_developer 
end
