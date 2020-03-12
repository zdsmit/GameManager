class User < ApplicationRecord
  has_secure_password
  has_many :transactions
  has_many :games, through: :transactions
  scope :developer, -> { where(developer: true) }

  def self.from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.name = auth.info.name
      user.email = auth.info.email
    end
  end

end
