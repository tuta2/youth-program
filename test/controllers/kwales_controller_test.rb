require "test_helper"

class KwalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kwale = kwales(:one)
  end

  test "should get index" do
    get kwales_url
    assert_response :success
  end

  test "should get new" do
    get new_kwale_url
    assert_response :success
  end

  test "should create kwale" do
    assert_difference("Kwale.count") do
      post kwales_url, params: { kwale: {  } }
    end

    assert_redirected_to kwale_url(Kwale.last)
  end

  test "should show kwale" do
    get kwale_url(@kwale)
    assert_response :success
  end

  test "should get edit" do
    get edit_kwale_url(@kwale)
    assert_response :success
  end

  test "should update kwale" do
    patch kwale_url(@kwale), params: { kwale: {  } }
    assert_redirected_to kwale_url(@kwale)
  end

  test "should destroy kwale" do
    assert_difference("Kwale.count", -1) do
      delete kwale_url(@kwale)
    end

    assert_redirected_to kwales_url
  end
end
