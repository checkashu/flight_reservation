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
  
  test "invalid user submission results in failure" do
    get new_user_path
    assert_template 'users/new'
    assert_no_difference 'User.count' do
      post users_path, user: {name: " "}
    end
    assert_template 'users/new'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end
  
end