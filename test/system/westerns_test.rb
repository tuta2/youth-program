require "application_system_test_case"

class WesternsTest < ApplicationSystemTestCase
  setup do
    @western = westerns(:one)
  end

  test "visiting the index" do
    visit westerns_url
    assert_selector "h1", text: "Westerns"
  end

  test "should create western" do
    visit westerns_url
    click_on "New western"

    click_on "Create Western"

    assert_text "Western was successfully created"
    click_on "Back"
  end

  test "should update Western" do
    visit western_url(@western)
    click_on "Edit this western", match: :first

    click_on "Update Western"

    assert_text "Western was successfully updated"
    click_on "Back"
  end

  test "should destroy Western" do
    visit western_url(@western)
    click_on "Destroy this western", match: :first

    assert_text "Western was successfully destroyed"
  end
end
