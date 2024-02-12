require "test_helper"

class InsurerTest < ActiveSupport::TestCase
  setup do
    @ins = insurers(:one)
  end

  test 'name is not null' do
    @ins.name = nil
    refute @ins.save, 'An insurer without a name was saved'
  end
end
