require "test_helper"

class ProviderTest < ActiveSupport::TestCase
  setup do
    @prov = providers(:one)
  end

  test 'name cannot be nil' do
    @prov.name = nil
    refute @prov.save, 'An provider without a name was saved'
  end
end
