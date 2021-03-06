class Transaction < ApplicationRecord
  belongs_to :game
  belongs_to :user

  def purchase
    leftover_money = self.user.money - self.game.price
    if leftover_money > 0
      self.user.games << self.game unless self.user.games.include?(self.game)
      self.user.update(
        :money => leftover_money
        )
      if !!self.game.developer
        profit = self.game.developer.money + self.game.price  
        self.game.developer.update(
          :money => profit
        )
      end
      if self.message == ""
        "Thank you very much for your purchase. Enjoy the game!"
      else
        self.message
      end
    else
      "Sorry, you don't have enough money!"
    end
  end

end
