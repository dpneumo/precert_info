class Diagnosis < ApplicationRecord
  has_many :precerts

  validates :name, presence: true
  validates :icd10, presence: true

#TODO: Cache this?
  def self.select_collection
    all.map {|dx| [dx.name, dx.id] }
  end

  def self.ndx_header
    'Diagnoses'
  end

  def self.newlink_txt
    "New Diagnosis"
  end
end
