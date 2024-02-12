class Office < ApplicationRecord
	has_many :providers
	
	validates :name, presence: true
	validates :street1, presence: true
	validates :city, presence: true
	validates :zip, presence: true
end
