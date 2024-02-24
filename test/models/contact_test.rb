require "test_helper"

class ContactTest < ActiveSupport::TestCase
  setup do
    @contact = contacts(:one)
  end

  test 'contact_time is not null' do
    @contact.contact_time = nil
    refute @contact.save, 'An contact without a contact_time was saved'
  end

  test 'duration is not null' do
    @contact.duration = nil
    refute @contact.save, 'An contact without a duration was saved'
  end
end
