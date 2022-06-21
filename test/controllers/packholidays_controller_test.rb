require "test_helper"

class PackholidaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @packholiday = packholidays(:one)
  end

  test "should get index" do
    get packholidays_url
    assert_response :success
  end

  test "should get new" do
    get new_packholiday_url
    assert_response :success
  end

  test "should create packholiday" do
    assert_difference("Packholiday.count") do
      post packholidays_url, params: { packholiday: {  } }
    end

    assert_redirected_to packholiday_url(Packholiday.last)
  end

  test "should show packholiday" do
    get packholiday_url(@packholiday)
    assert_response :success
  end

  test "should get edit" do
    get edit_packholiday_url(@packholiday)
    assert_response :success
  end

  test "should update packholiday" do
    patch packholiday_url(@packholiday), params: { packholiday: {  } }
    assert_redirected_to packholiday_url(@packholiday)
  end

  test "should destroy packholiday" do
    assert_difference("Packholiday.count", -1) do
      delete packholiday_url(@packholiday)
    end

    assert_redirected_to packholidays_url
  end
end
