require "test_helper"

class PrecertTest < ActiveSupport::TestCase
  setup do
    @pc = precerts(:one)
  end

  test 'patientMRN is not null' do
    @pc.patientMRN = nil
    refute @pc.save, 'An precert without a patientMRN was saved'
  end

  test 'service_id cannot be nil' do
    @pc.service_id = nil
    assert_raises(ActiveRecord::RecordNotFound) do
      @pc.save  
    end
  end

  test 'diagnosis_id cannot be nil' do
    @pc.diagnosis_id = nil
    assert_raises(ActiveRecord::RecordNotFound) do
      @pc.save  
    end
  end

  test 'provider_id cannot be nil' do
    @pc.provider_id = nil
    assert_raises(ActiveRecord::RecordNotFound) do
      @pc.save  
    end
  end

  test 'insurer_id cannot be nil' do
    @pc.insurer_id = nil
    assert_raises(ActiveRecord::RecordNotFound) do
      @pc.save  
    end
  end
end
