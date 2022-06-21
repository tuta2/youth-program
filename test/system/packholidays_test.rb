require "application_system_test_case"

class PackholidaysTest < ApplicationSystemTestCase
  setup do
    @packholiday = packholidays(:one)
  end

  test "visiting the index" do
    visit packholidays_url
    assert_selector "h1", text: "Packholidays"
  end

  test "should create packholiday" do
    visit packholidays_url
    click_on "New packholiday"

    click_on "Create Packholiday"

    assert_text "Packholiday was successfully created"
    click_on "Back"
  end

  test "should update Packholiday" do
    visit packholiday_url(@packholiday)
    click_on "Edit this packholiday", match: :first

    click_on "Update Packholiday"

    assert_text "Packholiday was successfully updated"
    click_on "Back"
  end

  test "should destroy Packholiday" do
    visit packholiday_url(@packholiday)
    click_on "Destroy this packholiday", match: :first

    assert_text "Packholiday was successfully destroyed"
  end
end
