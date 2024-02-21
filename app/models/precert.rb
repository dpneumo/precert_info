class Precert < ApplicationRecord
  has_many :calls, dependent: :delete_all

  belongs_to :diagnosis
  belongs_to :insurer
  belongs_to :provider
  belongs_to :service

  validates :patientMRN, presence: true

  def self.ndx_header
    'Precerts'
  end

  def self.newlink_txt
    "New Precert"
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
