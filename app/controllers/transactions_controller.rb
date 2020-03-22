class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.create(transaction_params)
    purchase = @transaction.purchase
    purchase
    redirect_to user_path(@transaction.user), flash: {message:purchase}
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :game_id, :message)
  end

end
