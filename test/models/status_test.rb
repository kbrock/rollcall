require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "status factory" do
    assert build(:status).user
  end
end
