class Service < ApplicationRecord
	has_many :precerts

  validates :name, presence: true
  validates :servtype,  presence: true

  def self.select_options
    order(:servtype, :name).map {|serv| [serv.name, serv.id] }
  end

  def self.grouped_options
    h = Hash.new {|hash,key| hash[key] = [] }
    order(:servtype, :name).inject(h) do |coll, serv| 
      coll[serv.servtype].append([serv.name, serv.id]) 
      coll
    end.to_a
  end

  def self.ndx_header
    'Services'
  end

  def self.newlink_txt
    "New Service"
  end

  def service_hint
    return '' unless name  
    name.length > 20 ? name.slice(0..19)+'...' : name
  end
end
