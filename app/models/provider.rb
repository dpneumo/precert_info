class Provider < ApplicationRecord
  has_many :precerts
  belongs_to :office

  validates :name, presence: true
  validates :office_id,  presence: true

#TODO: Cache this?
  def self.select_collection
    all.map {|prov| [prov.name, prov.id] }
  end

  def office
    Office.find(office_id).name
  end
end
