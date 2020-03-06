class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :developer
  has_many :transactions
  has_many :users, through: :transactions
  
end
