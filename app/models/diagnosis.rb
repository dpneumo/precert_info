class Diagnosis < ApplicationRecord
  has_many :precerts

  validates :name, presence: true
  validates :icd10, presence: true

#TODO: Cache this?
  def self.select_collection
    order(:dxtype, :name).map {|dx| [dx.name, dx.id] }
  end

  def self.grouped_select_collection
    h = Hash.new {|hash,key| hash[key] = [] }
    order(:dxtype, :name).inject(h) do |coll, dx| 
      coll[dx.dxtype].append([dx.name, dx.id]) 
      coll
    end
  end

  def self.ndx_header
    'Diagnoses'
  end

  def self.newlink_txt
    "New Diagnosis"
  end
end
