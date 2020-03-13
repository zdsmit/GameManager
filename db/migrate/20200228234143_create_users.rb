class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest, default: "password"
      t.float :money, default: 100
      t.boolean :developer, default: false

      t.timestamps
    end
  end
end
