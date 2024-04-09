class Peer2peer < ApplicationRecord
  belongs_to :precert
  belongs_to :provider

  def date_of_p2p
    return '' unless p2p_date  
    p2p_date.strftime('%D %l:%M %p')
  end

  def dur_of_contact
    return '' unless duration  
    "#{duration} min"
  end

  def provider_name
    return '' unless provider_id
    provider.prov_name 
  end

  def note_hint
    return '' unless note  
    note.length > 20 ? note.slice(0..19)+'...' : note
  end
end
