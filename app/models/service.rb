class Service < ApplicationRecord
	has_many :precerts

  validates :name, presence: true
  validates :servtype,  presence: true

#TODO: Cache this?
  def self.select_collection
    all.map {|serv| [serv.name, serv.id] }
  end
end
