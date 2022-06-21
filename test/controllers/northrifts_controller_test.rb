require "test_helper"

class NorthriftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @northrift = northrifts(:one)
  end

  test "should get index" do
    get northrifts_url
    assert_response :success
  end

  test "should get new" do
    get new_northrift_url
    assert_response :success
  end

  test "should create northrift" do
    assert_difference("Northrift.count") do
      post northrifts_url, params: { northrift: {  } }
    end

    assert_redirected_to northrift_url(Northrift.last)
  end

  test "should show northrift" do
    get northrift_url(@northrift)
    assert_response :success
  end

  test "should get edit" do
    get edit_northrift_url(@northrift)
    assert_response :success
  end

  test "should update northrift" do
    patch northrift_url(@northrift), params: { northrift: {  } }
    assert_redirected_to northrift_url(@northrift)
  end

  test "should destroy northrift" do
    assert_difference("Northrift.count", -1) do
      delete northrift_url(@northrift)
    end

    assert_redirected_to northrifts_url
  end
end
