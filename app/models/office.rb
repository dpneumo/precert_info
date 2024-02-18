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

  def address
  	"#{self.street1}, #{self.street2}, #{self.city}, #{self.state}, #{self.zip}"
  end
end
