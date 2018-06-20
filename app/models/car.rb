class Car < ApplicationRecord
  validates :model, :make, :color, presence: true
  has_many :ownerships
  has_many :people, through: :ownerships
end
