class DevelopersController < ApplicationController
  def new
    @developer = Developer.new
  end
    
  def create
    @developer = Developer.create(developer_params)
    session[:developer_id] = @developer.id
    redirect_to @developer
  end
    
  def index
    @developers = Developer.all
  end
    
  def show
    @developer = Developer.find(params[:id])
  end
    
  def edit
    @developer = Developer.find(params[:id])
  end
    
  def update
    @developer = Developer.find(params[:id])
    @developer.update(developer_params)
    redirect_to @developer
  end
    
  private
    
  def user_params
    params.require(:developer).permit(:name, :password, :money)
  end
end
