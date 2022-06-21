require "test_helper"

class PatrolleaderscoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patrolleaderscourse = patrolleaderscourses(:one)
  end

  test "should get index" do
    get patrolleaderscourses_url
    assert_response :success
  end

  test "should get new" do
    get new_patrolleaderscourse_url
    assert_response :success
  end

  test "should create patrolleaderscourse" do
    assert_difference("Patrolleaderscourse.count") do
      post patrolleaderscourses_url, params: { patrolleaderscourse: {  } }
    end

    assert_redirected_to patrolleaderscourse_url(Patrolleaderscourse.last)
  end

  test "should show patrolleaderscourse" do
    get patrolleaderscourse_url(@patrolleaderscourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_patrolleaderscourse_url(@patrolleaderscourse)
    assert_response :success
  end

  test "should update patrolleaderscourse" do
    patch patrolleaderscourse_url(@patrolleaderscourse), params: { patrolleaderscourse: {  } }
    assert_redirected_to patrolleaderscourse_url(@patrolleaderscourse)
  end

  test "should destroy patrolleaderscourse" do
    assert_difference("Patrolleaderscourse.count", -1) do
      delete patrolleaderscourse_url(@patrolleaderscourse)
    end

    assert_redirected_to patrolleaderscourses_url
  end
end
