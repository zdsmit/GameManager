class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to new_game_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
