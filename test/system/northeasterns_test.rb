require "application_system_test_case"

class NortheasternsTest < ApplicationSystemTestCase
  setup do
    @northeastern = northeasterns(:one)
  end

  test "visiting the index" do
    visit northeasterns_url
    assert_selector "h1", text: "Northeasterns"
  end

  test "should create northeastern" do
    visit northeasterns_url
    click_on "New northeastern"

    click_on "Create Northeastern"

    assert_text "Northeastern was successfully created"
    click_on "Back"
  end

  test "should update Northeastern" do
    visit northeastern_url(@northeastern)
    click_on "Edit this northeastern", match: :first

    click_on "Update Northeastern"

    assert_text "Northeastern was successfully updated"
    click_on "Back"
  end

  test "should destroy Northeastern" do
    visit northeastern_url(@northeastern)
    click_on "Destroy this northeastern", match: :first

    assert_text "Northeastern was successfully destroyed"
  end
end
