class Contact < ApplicationRecord
  belongs_to :precert

  validates :contact_time, presence: true
  validates :duration,  presence: true

  def self.ndx_header
    'Contacts'
  end

  def self.newlink_txt
    "New Contact"
  end

  def precert_text
    pcert = Precert.find(precert_id)
    "#{pcert.patientMRN}-#{pcert.service}-#{pcert.fmtd_submit_date}"
  end

  def time_of_contact
    return '' unless contact_time  
    contact_time.strftime('%R')
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end

  def synopsis
    "#{contact_time} - #{duration} min: #{note_hint}"
  end
end
