require "test_helper"

class LowereasternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lowereastern = lowereasterns(:one)
  end

  test "should get index" do
    get lowereasterns_url
    assert_response :success
  end

  test "should get new" do
    get new_lowereastern_url
    assert_response :success
  end

  test "should create lowereastern" do
    assert_difference("Lowereastern.count") do
      post lowereasterns_url, params: { lowereastern: {  } }
    end

    assert_redirected_to lowereastern_url(Lowereastern.last)
  end

  test "should show lowereastern" do
    get lowereastern_url(@lowereastern)
    assert_response :success
  end

  test "should get edit" do
    get edit_lowereastern_url(@lowereastern)
    assert_response :success
  end

  test "should update lowereastern" do
    patch lowereastern_url(@lowereastern), params: { lowereastern: {  } }
    assert_redirected_to lowereastern_url(@lowereastern)
  end

  test "should destroy lowereastern" do
    assert_difference("Lowereastern.count", -1) do
      delete lowereastern_url(@lowereastern)
    end

    assert_redirected_to lowereasterns_url
  end
end
