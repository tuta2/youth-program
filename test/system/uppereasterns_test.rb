require "application_system_test_case"

class UppereasternsTest < ApplicationSystemTestCase
  setup do
    @uppereastern = uppereasterns(:one)
  end

  test "visiting the index" do
    visit uppereasterns_url
    assert_selector "h1", text: "Uppereasterns"
  end

  test "should create uppereastern" do
    visit uppereasterns_url
    click_on "New uppereastern"

    click_on "Create Uppereastern"

    assert_text "Uppereastern was successfully created"
    click_on "Back"
  end

  test "should update Uppereastern" do
    visit uppereastern_url(@uppereastern)
    click_on "Edit this uppereastern", match: :first

    click_on "Update Uppereastern"

    assert_text "Uppereastern was successfully updated"
    click_on "Back"
  end

  test "should destroy Uppereastern" do
    visit uppereastern_url(@uppereastern)
    click_on "Destroy this uppereastern", match: :first

    assert_text "Uppereastern was successfully destroyed"
  end
end
