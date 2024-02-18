class Call < ApplicationRecord
  belongs_to :precert

  validates :call_time, presence: true
  validates :duration,  presence: true

  def precert
    pcert = Precert.find(precert_id)
    "#{pcert.patientMRN}-#{pcert.service}-#{pcert.fmtd_submit_date}"
  end

  def time_of_call
    self.call_time.strftime('%R')
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end
end
