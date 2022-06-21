require "application_system_test_case"

class NorthriftsTest < ApplicationSystemTestCase
  setup do
    @northrift = northrifts(:one)
  end

  test "visiting the index" do
    visit northrifts_url
    assert_selector "h1", text: "Northrifts"
  end

  test "should create northrift" do
    visit northrifts_url
    click_on "New northrift"

    click_on "Create Northrift"

    assert_text "Northrift was successfully created"
    click_on "Back"
  end

  test "should update Northrift" do
    visit northrift_url(@northrift)
    click_on "Edit this northrift", match: :first

    click_on "Update Northrift"

    assert_text "Northrift was successfully updated"
    click_on "Back"
  end

  test "should destroy Northrift" do
    visit northrift_url(@northrift)
    click_on "Destroy this northrift", match: :first

    assert_text "Northrift was successfully destroyed"
  end
end
