class Provider < ApplicationRecord
  has_many :precerts
  belongs_to :office

  validates :name, presence: true

  def self.select_options
    order(:name).map {|prov| [prov.name, prov.id] }
  end

  def self.ndx_header
    'Providers'
  end

  def self.newlink_txt
    "New Provider"
  end
end
