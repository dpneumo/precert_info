require "test_helper"

class ProviderTest < ActiveSupport::TestCase
  setup do
    @prov = providers(:one)
  end

  test 'name is not null' do
    @prov.name = nil
    refute @prov.save, 'An provider without a name was saved'
  end

  test 'office_id is not null' do
    @prov.office_id = nil
    refute @prov.save, 'An provider without a office_id was saved'
  end
end
