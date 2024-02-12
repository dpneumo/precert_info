require "test_helper"

class OfficeTest < ActiveSupport::TestCase
  setup do
    @office = offices(:one)
  end

  test 'name is not null' do
    @office.name = nil
    refute @office.save, 'An office without a name was saved'
  end

  test 'street1 is not null' do
    @office.street1 = nil
    refute @office.save, 'An office without a street1 was saved'
  end

  test 'city is not null' do
    @office.city = nil
    refute @office.save, 'An office without a city was saved'
  end

  test 'zip is not null' do
    @office.zip = nil
    refute @office.save, 'An office without a zip was saved'
  end
end
