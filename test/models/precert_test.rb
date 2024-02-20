require "test_helper"

class PrecertTest < ActiveSupport::TestCase
  setup do
    @pc = precerts(:one)
  end

  test 'patientMRN is not null' do
    @pc.patientMRN = nil
    refute @pc.save, 'An precert without a patientMRN was saved'
  end
end
