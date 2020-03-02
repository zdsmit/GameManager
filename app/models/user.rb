class User < ApplicationRecord
  has_many :user_games
  has_many :games, through: :user_games
  has_many :genres, through: :games
  has_many :developers, through: :games

end
