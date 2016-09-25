require 'test_helper'

class CreateUsersTest < ActionDispatch::IntegrationTest

  test "get new user form and create category" do
    get new_user_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {name: "Ashutosh"}
    end
    assert_template 'users/index'
    assert_match "Ashutosh", response.body
  end
end