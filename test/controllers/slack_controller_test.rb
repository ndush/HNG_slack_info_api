require "test_helper"

class SlackControllerTest < ActionDispatch::IntegrationTest
  test "should get Info" do
    get slack_Info_url
    assert_response :success
  end
end
