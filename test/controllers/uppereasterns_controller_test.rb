require "test_helper"

class UppereasternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uppereastern = uppereasterns(:one)
  end

  test "should get index" do
    get uppereasterns_url
    assert_response :success
  end

  test "should get new" do
    get new_uppereastern_url
    assert_response :success
  end

  test "should create uppereastern" do
    assert_difference("Uppereastern.count") do
      post uppereasterns_url, params: { uppereastern: {  } }
    end

    assert_redirected_to uppereastern_url(Uppereastern.last)
  end

  test "should show uppereastern" do
    get uppereastern_url(@uppereastern)
    assert_response :success
  end

  test "should get edit" do
    get edit_uppereastern_url(@uppereastern)
    assert_response :success
  end

  test "should update uppereastern" do
    patch uppereastern_url(@uppereastern), params: { uppereastern: {  } }
    assert_redirected_to uppereastern_url(@uppereastern)
  end

  test "should destroy uppereastern" do
    assert_difference("Uppereastern.count", -1) do
      delete uppereastern_url(@uppereastern)
    end

    assert_redirected_to uppereasterns_url
  end
end
