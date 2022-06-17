require "test_helper"

class CoastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coasts_index_url
    assert_response :success
  end
end
