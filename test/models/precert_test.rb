require "test_helper"

class PrecertTest < ActiveSupport::TestCase
  setup do
    @pc = precerts(:one)
  end

  test 'patientMRN is not null' do
    @pc.patientMRN = nil
    refute @pc.save, 'An precert without a patientMRN was saved'
  end

  test 'service_id is not null' do
    @pc.service_id = nil
    refute @pc.save, 'An precert without a service_id was saved'
  end

  test 'diagnosis_id is not null' do
    @pc.diagnosis_id = nil
    refute @pc.save, 'An precert without a diagnosis_id was saved'
  end

  test 'provider_id is not null' do
    @pc.provider_id = nil
    refute @pc.save, 'An precert without a provider_id was saved'
  end

  test 'insurer_id is not null' do
    @pc.insurer_id = nil
    refute @pc.save, 'An precert without a insurer_id was saved'
  end
end
