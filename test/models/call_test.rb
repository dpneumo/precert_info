require "test_helper"

class CallTest < ActiveSupport::TestCase
  setup do
    @call = calls(:one)
  end

  test 'call_time is not null' do
    @call.call_time = nil
    refute @call.save, 'An call without a call_time was saved'
  end

  test 'duration is not null' do
    @call.duration = nil
    refute @call.save, 'An call without a duration was saved'
  end
end
