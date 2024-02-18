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

  def self.ndx_header
    'Precerts'
  end

  def self.newlink_txt
    "New Precert"
  end

#TODO: remove n+1 queries
  def diagnosis
    Diagnosis.find(diagnosis_id).name
  end

  def insurer
    Insurer.find(insurer_id).name
  end

  def provider
    Provider.find(provider_id).name
  end

  def service
    Service.find(service_id).name
  end

  def fmtd_submit_date
    submitted.strftime('%D')
  end

  def fmtd_approve_date
    approved.strftime('%D')
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end
end
