class Precert < ApplicationRecord
  has_many :contacts, dependent: :destroy

  belongs_to :diagnosis
  belongs_to :insurer
  belongs_to :provider
  belongs_to :service

  validates :patientMRN, presence: true

  scope :is_open, -> { where(closed: [nil]) }
  scope :is_closed, -> { where.not(closed: [nil]) }
  scope :is_approved, -> { where.not(approval: [nil]) }
  scope :is_unapproved, -> { where(approval: [nil]) }
  scope :is_submitted, -> { where.not(submitted: [nil]) }
  scope :is_unsubmitted, -> { where(submitted: [nil]) }
  scope :serv, ->(id) { where('service_id == ?', id) }
  scope :dx, ->(id) { where('diagnosis_id == ?', id) }
  scope :prov, ->(id) { where('provider_id == ?', id) }
  scope :ins, ->(id) { where('service_id == ?', id) }

  def self.ndx_header
    'Precerts'
  end

  def self.newlink_txt
    "New Precert"
  end

  def fmtd_submit_date
    return '' unless submitted  
    submitted.strftime('%D')
  end

  def fmtd_approval_date
    return '' unless approval  
    approval.strftime('%D')
  end

  def fmtd_closed_date
    return '' unless closed  
    closed.strftime('%D')
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
