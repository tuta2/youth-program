require "test_helper"

class WesternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @western = westerns(:one)
  end

  test "should get index" do
    get westerns_url
    assert_response :success
  end

  test "should get new" do
    get new_western_url
    assert_response :success
  end

  test "should create western" do
    assert_difference("Western.count") do
      post westerns_url, params: { western: {  } }
    end

    assert_redirected_to western_url(Western.last)
  end

  test "should show western" do
    get western_url(@western)
    assert_response :success
  end

  test "should get edit" do
    get edit_western_url(@western)
    assert_response :success
  end

  test "should update western" do
    patch western_url(@western), params: { western: {  } }
    assert_redirected_to western_url(@western)
  end

  test "should destroy western" do
    assert_difference("Western.count", -1) do
      delete western_url(@western)
    end

    assert_redirected_to westerns_url
  end
end
