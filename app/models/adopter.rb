class Adopter < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, :password, presence: true

  has_many :favorites
  has_many :dogs, through: :favorites
end
