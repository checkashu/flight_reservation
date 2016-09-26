require 'test_helper'

class CreateUsersTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(name: "Ankur")
    @user2 = User.create(name: "Tiwari")
  end
  test "should show users listing" do
    get users_path
    assert_template 'users/index'
    assert_select "a[href-?]", user_path(@user), text: @user.name
    assert_select "a[href-?]", user_path(@user2), text: @user2.name
  end
end