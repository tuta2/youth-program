require "application_system_test_case"

class SouthriftsTest < ApplicationSystemTestCase
  setup do
    @southrift = southrifts(:one)
  end

  test "visiting the index" do
    visit southrifts_url
    assert_selector "h1", text: "Southrifts"
  end

  test "should create southrift" do
    visit southrifts_url
    click_on "New southrift"

    click_on "Create Southrift"

    assert_text "Southrift was successfully created"
    click_on "Back"
  end

  test "should update Southrift" do
    visit southrift_url(@southrift)
    click_on "Edit this southrift", match: :first

    click_on "Update Southrift"

    assert_text "Southrift was successfully updated"
    click_on "Back"
  end

  test "should destroy Southrift" do
    visit southrift_url(@southrift)
    click_on "Destroy this southrift", match: :first

    assert_text "Southrift was successfully destroyed"
  end
end
