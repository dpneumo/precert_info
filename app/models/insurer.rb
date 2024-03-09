class Insurer < ApplicationRecord
  has_many :precerts

  validates :name, presence: true

#TODO: Cache this?
  def self.select_collection
    order(:name).map {|ins| [ins.name, ins.id] }
  end

  def self.ndx_header
    'Insurers'
  end

  def self.newlink_txt
    "New Insurer"
  end
end
