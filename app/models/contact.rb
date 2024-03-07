class Contact < ApplicationRecord
  belongs_to :precert

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

  def date_of_contact
    return '' unless contact_date  
    contact_date.strftime('%D  %l:%M %p')
  end

  def dur_of_contact
    return '' unless duration  
    "#{duration} min"
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end

  def synopsis
    "ID: #{id}: #{date_of_contact} - #{duration} min: #{note_hint}"
  end
end
