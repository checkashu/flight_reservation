require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def setup
    @user = User.create(name: "Ashutosh")
  end

  test "should get categories index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get(:show, {'id' => @user.id})
    assert_response :success
  end

end