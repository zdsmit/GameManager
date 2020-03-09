class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new(user_id: current_user.id)
  end

  def create
    @transaction = Transaction.create
    purchase = @transaction.purchase
    redirect_to user_path(@transaction.user), flash: {message:purchase}
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :game_id)
  end

end
