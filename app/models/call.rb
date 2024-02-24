class Call < ApplicationRecord
  belongs_to :precert

  validates :call_time, presence: true
  validates :duration,  presence: true

  def self.ndx_header
    'Calls'
  end

  def self.newlink_txt
    "New Call"
  end

  def precert_text
    pcert = Precert.find(precert_id)
    "#{pcert.patientMRN}-#{pcert.service}-#{pcert.fmtd_submit_date}"
  end

  def time_of_call
    return '' unless call_time  
    call_time.strftime('%R')
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end

  def synopsis
    "#{call_time} - #{duration} min: #{note_hint}"
  end
end
