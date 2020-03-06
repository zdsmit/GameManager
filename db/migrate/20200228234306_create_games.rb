class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.float :price
      t.integer :genre_id
      t.integer :developer_id

      t.timestamps
    end
  end
end
