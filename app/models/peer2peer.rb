class Peer2peer < ApplicationRecord
  belongs_to :precert
  belongs_to :provider

  def date_of_p2p
    return '' unless p2p_date  
    p2p_date.strftime('%D')
  end

  def time_of_p2p
    return '' unless p2p_time  
    p2p_time.strftime('%l:%M %p')
  end

  def provider_name
    return '' unless provider_id
    provider.name 
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end
end
