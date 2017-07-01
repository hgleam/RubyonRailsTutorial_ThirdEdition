require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test 'shoud be valid' do
    assert @user.valid?
  end

  test 'name shoud be present' do
    @user.name = ""
    assert_not @user.valid?
  end

  test 'email shoud be present' do
    @user.email = ""
    assert_not @user.valid?
  end
end
