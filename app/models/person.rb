class Person < ApplicationRecord
  validates :name, presence: true
  validates :email,
    format: { 
      with: /\S+@\S+\.\S+/,
      message: "Invalid email format. Example: abc@example.com"
    }, 
    if: :email?

  has_many :ownerships
  has_many :cars, through: :ownerships
end
