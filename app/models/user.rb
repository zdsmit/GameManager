class User < ApplicationRecord
  has_secure_password
  has_many :transactions
  has_many :games, through: :transactions
  scope :developers, -> { where(developer: true) }
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

end
