class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :price)
  end

end
