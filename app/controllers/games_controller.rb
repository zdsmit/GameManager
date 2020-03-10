class GamesController < ApplicationController

  def new
    if current_user.developer
      @game = Game.new
    else 
      redirect_to root_path
    end
  end

  def create
    @game = Game.create(game_params)
    @game.developer = current_user
    if @game.save
      redirect_to game_path(@game.id)
    else
      render 'new'
    end
  end

  def index
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      if @user.nil?
        redirect_to users_path, alert: "User not found"
      else
        @games = @user.games
      end
    else
      @games = Game.all
    end
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

  def edit
    @game = Game.find_by(id: params[:id])
    if @game.developer == current_user
      render 'edit'
    else
      redirect_to @game
    end
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(game_params)
    redirect_to @game
  end

  def destroy
    @game = Game.find(params[:id])
    @game.delete
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :price, :genre_id)
  end

end
