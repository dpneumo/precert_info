require "test_helper"

class ProviderTest < ActiveSupport::TestCase
  setup do
    @prov = providers(:one)
  end

  test 'name cannot be nil' do
    @prov.name = nil
    refute @prov.save, 'An provider without a name was saved'
  end

  test 'office_id is not null' do
    @prov.office_id = nil
    assert_raises(ActiveRecord::RecordNotFound) do
      @prov.save  
    end
  end
end
