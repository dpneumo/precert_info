class Insurer < ApplicationRecord
  has_many :precerts

  validates :name, presence: true
end
