class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :game_id)
  end

end
