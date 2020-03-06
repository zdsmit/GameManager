class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :developer, :class_name => "User", :foreign_key => "user_id"
  has_many :transactions
  has_many :users, through: :transactions
  
end
