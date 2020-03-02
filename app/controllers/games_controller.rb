class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    redirect_to @game
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :price)
  end

end
