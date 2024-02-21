class Office < ApplicationRecord
	has_many :providers
	
	validates :name, presence: true
	validates :street1, presence: true
	validates :city, presence: true
	validates :zip, presence: true

#TODO: Cache this?
  def self.select_collection
    all.map {|off| [off.name, off.id] }
  end

  def self.ndx_header
    'Offices'
  end

  def self.newlink_txt
    "New Office"
  end

  def self.ph_pattern
    '[0-9]{3}-[0-9]{3}-[0-9]{4}'
  end

  def address
  	"#{street1}, #{street2}, #{city}, #{state}, #{zip}"
  end
end
