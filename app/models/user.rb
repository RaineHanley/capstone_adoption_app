class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :favorited_pets
  has_many :pets, through: :favorited_pets
end
