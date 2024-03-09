class Service < ApplicationRecord
	has_many :precerts

  validates :name, presence: true
  validates :servtype,  presence: true

#TODO: Cache this?
  def self.select_collection
    order(:servtype, :name).map {|serv| [serv.name, serv.id] }
  end

  def self.grouped_select_collection
    h = Hash.new {|hash,key| hash[key] = [] }
    order(:servtype, :name).inject(h) do |coll, serv| 
      coll[serv.servtype].append([serv.name, serv.id]) 
      coll
    end
  end

  def self.ndx_header
    'Services'
  end

  def self.newlink_txt
    "New Service"
  end
end
