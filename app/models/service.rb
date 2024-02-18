class Service < ApplicationRecord
	has_many :precerts

  validates :name, presence: true
  validates :servtype,  presence: true

#TODO: Cache this?
  def self.select_collection
    all.map {|serv| [serv.name, serv.id] }
  end

  def self.ndx_header
    'Services'
  end

  def self.newlink_txt
    "New Service"
  end
end
