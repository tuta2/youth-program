require "test_helper"

class NortheasternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @northeastern = northeasterns(:one)
  end

  test "should get index" do
    get northeasterns_url
    assert_response :success
  end

  test "should get new" do
    get new_northeastern_url
    assert_response :success
  end

  test "should create northeastern" do
    assert_difference("Northeastern.count") do
      post northeasterns_url, params: { northeastern: {  } }
    end

    assert_redirected_to northeastern_url(Northeastern.last)
  end

  test "should show northeastern" do
    get northeastern_url(@northeastern)
    assert_response :success
  end

  test "should get edit" do
    get edit_northeastern_url(@northeastern)
    assert_response :success
  end

  test "should update northeastern" do
    patch northeastern_url(@northeastern), params: { northeastern: {  } }
    assert_redirected_to northeastern_url(@northeastern)
  end

  test "should destroy northeastern" do
    assert_difference("Northeastern.count", -1) do
      delete northeastern_url(@northeastern)
    end

    assert_redirected_to northeasterns_url
  end
end
