class CreateDevelopers < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :password_digest
      t.float :money

      t.timestamps
    end
  end
end
