require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  setup do
    @srvc = services(:one)
  end

  test 'name is not null' do
    @srvc.name = nil
    refute @srvc.save, 'An service without a name was saved'
  end

  test 'servtype is not null' do
    @srvc.servtype = nil
    refute @srvc.save, 'An service without a servtype was saved'
  end
end
