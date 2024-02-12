class Call < ApplicationRecord
  belongs_to :precert

  validates :call_time, presence: true
  validates :duration,  presence: true
end
