require "test_helper"

class DiagnosisTest < ActiveSupport::TestCase
  setup do
    @dx = diagnoses(:one)
  end

  test 'name is not null' do
    @dx.name = nil
    refute @dx.save, 'An dx without a name was saved'
  end

  test 'icd10 is not null' do
    @dx.icd10 = nil
    refute @dx.save, 'An dx without a icd10 was saved'
  end
end
