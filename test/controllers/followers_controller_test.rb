require "test_helper"

class FollowersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get followers_create_url
    assert_response :success
  end

  test "should get update" do
    get followers_update_url
    assert_response :success
  end
end
