require "application_system_test_case"

class PatrolleaderscoursesTest < ApplicationSystemTestCase
  setup do
    @patrolleaderscourse = patrolleaderscourses(:one)
  end

  test "visiting the index" do
    visit patrolleaderscourses_url
    assert_selector "h1", text: "Patrolleaderscourses"
  end

  test "should create patrolleaderscourse" do
    visit patrolleaderscourses_url
    click_on "New patrolleaderscourse"

    click_on "Create Patrolleaderscourse"

    assert_text "Patrolleaderscourse was successfully created"
    click_on "Back"
  end

  test "should update Patrolleaderscourse" do
    visit patrolleaderscourse_url(@patrolleaderscourse)
    click_on "Edit this patrolleaderscourse", match: :first

    click_on "Update Patrolleaderscourse"

    assert_text "Patrolleaderscourse was successfully updated"
    click_on "Back"
  end

  test "should destroy Patrolleaderscourse" do
    visit patrolleaderscourse_url(@patrolleaderscourse)
    click_on "Destroy this patrolleaderscourse", match: :first

    assert_text "Patrolleaderscourse was successfully destroyed"
  end
end
