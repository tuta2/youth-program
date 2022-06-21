require "test_helper"

class SouthriftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @southrift = southrifts(:one)
  end

  test "should get index" do
    get southrifts_url
    assert_response :success
  end

  test "should get new" do
    get new_southrift_url
    assert_response :success
  end

  test "should create southrift" do
    assert_difference("Southrift.count") do
      post southrifts_url, params: { southrift: {  } }
    end

    assert_redirected_to southrift_url(Southrift.last)
  end

  test "should show southrift" do
    get southrift_url(@southrift)
    assert_response :success
  end

  test "should get edit" do
    get edit_southrift_url(@southrift)
    assert_response :success
  end

  test "should update southrift" do
    patch southrift_url(@southrift), params: { southrift: {  } }
    assert_redirected_to southrift_url(@southrift)
  end

  test "should destroy southrift" do
    assert_difference("Southrift.count", -1) do
      delete southrift_url(@southrift)
    end

    assert_redirected_to southrifts_url
  end
end
