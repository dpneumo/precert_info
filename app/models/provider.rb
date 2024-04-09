class Provider < ApplicationRecord
  has_many :precerts
  belongs_to :office

  validates :last_name, presence: true
  validates :first_name, presence: true

  def self.select_options
    order(:last_name, :first_name)
    .map do |prov|
      ["#{prov.last_name} #{prov.credentials}, #{prov.first_name}", prov.id]
    end
  end

  def self.ndx_header
    'Providers'
  end

  def self.newlink_txt
    "New Provider"
  end

  def prov_name
    "#{first_name} #{last_name} #{credentials}"
  end
end
