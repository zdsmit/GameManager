class Transaction < ApplicationRecord
  belongs_to :game
  belongs_to :user

  def purchase
    leftover_money = self.user.money - self.game.price
    profit = self.game.developer.money + self.game.price
    if leftover_money >= 0
      self.user.games << self.game
      self.user.money = leftover_money
      self.game.developer.money = profit
    else
      "Sorry, you don't have enough money!"
    end
  end

end
