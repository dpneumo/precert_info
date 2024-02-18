class Insurer < ApplicationRecord
  has_many :precerts

  validates :name, presence: true

#TODO: Cache this?
  def self.select_collection
    all.map {|ins| [ins.name, ins.id] }
  end
end
