class Car < ApplicationRecord
  validates :model, :make, :color, presence: true
  has_many :ownerships
  has_many :people, through: :ownerships

  scope :for_sale, -> { where(for_sale: true) }
end
