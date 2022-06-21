require "test_helper"

class NyanzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nyanza = nyanzas(:one)
  end

  test "should get index" do
    get nyanzas_url
    assert_response :success
  end

  test "should get new" do
    get new_nyanza_url
    assert_response :success
  end

  test "should create nyanza" do
    assert_difference("Nyanza.count") do
      post nyanzas_url, params: { nyanza: {  } }
    end

    assert_redirected_to nyanza_url(Nyanza.last)
  end

  test "should show nyanza" do
    get nyanza_url(@nyanza)
    assert_response :success
  end

  test "should get edit" do
    get edit_nyanza_url(@nyanza)
    assert_response :success
  end

  test "should update nyanza" do
    patch nyanza_url(@nyanza), params: { nyanza: {  } }
    assert_redirected_to nyanza_url(@nyanza)
  end

  test "should destroy nyanza" do
    assert_difference("Nyanza.count", -1) do
      delete nyanza_url(@nyanza)
    end

    assert_redirected_to nyanzas_url
  end
end
