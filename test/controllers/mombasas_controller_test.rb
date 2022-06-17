require "test_helper"

class MombasasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mombasas_index_url
    assert_response :success
  end
end
