class Transaction < ApplicationRecord
  belongs_to :game
  belongs_to :user

  def purchase
    self.user.games << self.game
  end
end
