class Game < ApplicationRecord
  belongs_to :developer
  has_many :user_games
  has_many :users, through: :user_games
  has_many :game_genres
  has_many :genres, through: :game_genres
  
end
