class Precert < ApplicationRecord
  has_many :calls, dependent: :delete_all

  belongs_to :diagnosis
  belongs_to :insurer
  belongs_to :provider
  belongs_to :service

  validates :patientMRN, presence: true
  validates :service_id,  presence: true
  validates :diagnosis_id, presence: true
  validates :provider_id,  presence: true
  validates :insurer_id, presence: true
end
