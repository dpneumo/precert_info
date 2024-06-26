class Insurer < ApplicationRecord
  has_many :precerts

  validates :name, presence: true

  def self.select_options
    order(:name).map {|ins| [ins.name, ins.id] }
  end

  def self.ndx_header
    'Insurers'
  end

  def self.newlink_txt
    "New Insurer"
  end
end
