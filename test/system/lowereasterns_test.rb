require "application_system_test_case"

class LowereasternsTest < ApplicationSystemTestCase
  setup do
    @lowereastern = lowereasterns(:one)
  end

  test "visiting the index" do
    visit lowereasterns_url
    assert_selector "h1", text: "Lowereasterns"
  end

  test "should create lowereastern" do
    visit lowereasterns_url
    click_on "New lowereastern"

    click_on "Create Lowereastern"

    assert_text "Lowereastern was successfully created"
    click_on "Back"
  end

  test "should update Lowereastern" do
    visit lowereastern_url(@lowereastern)
    click_on "Edit this lowereastern", match: :first

    click_on "Update Lowereastern"

    assert_text "Lowereastern was successfully updated"
    click_on "Back"
  end

  test "should destroy Lowereastern" do
    visit lowereastern_url(@lowereastern)
    click_on "Destroy this lowereastern", match: :first

    assert_text "Lowereastern was successfully destroyed"
  end
end
