class Diagnosis < ApplicationRecord
  has_many :precerts

  validates :name, presence: true
  validates :icd10, presence: true
end
