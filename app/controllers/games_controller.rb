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
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
    @transaction = @game.transactions.build(user_id: current_user.id)
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

  private

  def game_params
    params.require(:game).permit(:title, :description, :price, :genre_id)
  end

end
