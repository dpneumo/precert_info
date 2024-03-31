class Diagnosis < ApplicationRecord
  has_many :precerts

  validates :name, presence: true
  validates :icd10, presence: true

  def self.select_options
    pluck(:dxtype, :name, :id)
     .sort(:dxtype, :name)
     .map {|dx| [dx.name, dx.id] }
  end

  def self.grouped_options
    h = Hash.new {|hash,key| hash[key] = [] }
    order(:dxtype, :name).inject(h) do |coll, dx| 
      coll[dx.dxtype].append([dx.name, dx.id]) 
      coll
    end.to_a
  end

  def self.dxtypes
    distinct.pluck(:dxtype).sort
  end

  def self.ndx_header
    'Diagnoses'
  end

  def self.newlink_txt
    "New Diagnosis"
  end
end
