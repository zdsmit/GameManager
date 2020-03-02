class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :game_id
      t.text :message

      t.timestamps
    end
  end
end
