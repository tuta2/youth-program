require "application_system_test_case"

class CentralsTest < ApplicationSystemTestCase
  setup do
    @central = centrals(:one)
  end

  test "visiting the index" do
    visit centrals_url
    assert_selector "h1", text: "Centrals"
  end

  test "should create central" do
    visit centrals_url
    click_on "New central"

    click_on "Create Central"

    assert_text "Central was successfully created"
    click_on "Back"
  end

  test "should update Central" do
    visit central_url(@central)
    click_on "Edit this central", match: :first

    click_on "Update Central"

    assert_text "Central was successfully updated"
    click_on "Back"
  end

  test "should destroy Central" do
    visit central_url(@central)
    click_on "Destroy this central", match: :first

    assert_text "Central was successfully destroyed"
  end
end
