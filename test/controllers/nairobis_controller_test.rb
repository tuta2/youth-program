require "test_helper"

class NairobisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nairobi = nairobis(:one)
  end

  test "should get index" do
    get nairobis_url
    assert_response :success
  end

  test "should get new" do
    get new_nairobi_url
    assert_response :success
  end

  test "should create nairobi" do
    assert_difference("Nairobi.count") do
      post nairobis_url, params: { nairobi: {  } }
    end

    assert_redirected_to nairobi_url(Nairobi.last)
  end

  test "should show nairobi" do
    get nairobi_url(@nairobi)
    assert_response :success
  end

  test "should get edit" do
    get edit_nairobi_url(@nairobi)
    assert_response :success
  end

  test "should update nairobi" do
    patch nairobi_url(@nairobi), params: { nairobi: {  } }
    assert_redirected_to nairobi_url(@nairobi)
  end

  test "should destroy nairobi" do
    assert_difference("Nairobi.count", -1) do
      delete nairobi_url(@nairobi)
    end

    assert_redirected_to nairobis_url
  end
end
