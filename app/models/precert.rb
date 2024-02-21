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
    return '' unless submitted  
    submitted.strftime('%D')
  end

  def fmtd_approve_date
    return '' unless approved  
    approved.strftime('%D')
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
