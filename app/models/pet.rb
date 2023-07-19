class Pet < ApplicationRecord
  has_many :favorited_pets
  has_many :users, through: :favorited_pets
belongs_to :location
end
