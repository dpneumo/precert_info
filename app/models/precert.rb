class Precert < ApplicationRecord
  include Filterable
  
  has_many :contacts, dependent: :destroy
  has_many :peer2peers, dependent: :destroy

  belongs_to :diagnosis
  belongs_to :insurer
  belongs_to :provider
  belongs_to :service

  validates :patientMRN, presence: true

  enum :status, [:created, :submitted, :closed]

  scope :filter_by_approved,  -> (approved) { where('approved == ?', approved) }
  scope :filter_by_service,   ->(id) { where('service_id == ?', id) }
  scope :filter_by_dx,        ->(id) { where('diagnosis_id == ?', id) }
  scope :filter_by_provider,  ->(id) { where('provider_id == ?', id) }
  scope :filter_by_insurance, ->(id) { where('service_id == ?', id) }

  def self.ndx_header
    'Precerts'
  end

  def self.newlink_txt
    "New Precert"
  end

  def fmtd_submit_date
    return '' unless submission_date  
    submission_date.strftime('%D')
  end

  def fmtd_approval_date
    return '' unless approval_date  
    approval_date.strftime('%D')
  end

  def fmtd_closed_date
    return '' unless closed_date  
    closed_date.strftime('%D')
  end

  def confirm_hint
    return '' unless confirmation  
    confirmation.length > 10 ? confirmation.slice(0..9)+'...' : confirmation
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end
end
