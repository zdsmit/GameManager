class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    if @game.save
      redirect_to game_path(@game.id)
    else
      render 'new'
    end
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :price, :genre_id)
  end

end
