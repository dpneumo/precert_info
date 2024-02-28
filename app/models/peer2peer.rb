class Peer2peer < ApplicationRecord
  belongs_to :precert

  def scheduled_datetime
    return '' unless scheduled  
    scheduled.strftime('%D %l:%M %p')
  end

  def accept_yes_no
    accept ? 'Yes' : 'No'
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end
end
