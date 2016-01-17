require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # user?
  test "no name" do
    refute build(:user).name?
  end

  test "has name" do
    assert build(:user, :name => 'joe').name?
  end
end
