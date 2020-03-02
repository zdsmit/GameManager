class Game < ApplicationRecord
  belongs_to :genre
  has_many :transactions
  has_many :users, through: :transactions
  
end
