require "test_helper"

class InvestituresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get investitures_index_url
    assert_response :success
  end
end
