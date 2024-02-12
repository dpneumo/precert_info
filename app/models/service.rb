class Service < ApplicationRecord
	has_many :precerts

  validates :name, presence: true
  validates :servtype,  presence: true
end
