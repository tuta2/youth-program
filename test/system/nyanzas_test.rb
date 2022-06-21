require "application_system_test_case"

class NyanzasTest < ApplicationSystemTestCase
  setup do
    @nyanza = nyanzas(:one)
  end

  test "visiting the index" do
    visit nyanzas_url
    assert_selector "h1", text: "Nyanzas"
  end

  test "should create nyanza" do
    visit nyanzas_url
    click_on "New nyanza"

    click_on "Create Nyanza"

    assert_text "Nyanza was successfully created"
    click_on "Back"
  end

  test "should update Nyanza" do
    visit nyanza_url(@nyanza)
    click_on "Edit this nyanza", match: :first

    click_on "Update Nyanza"

    assert_text "Nyanza was successfully updated"
    click_on "Back"
  end

  test "should destroy Nyanza" do
    visit nyanza_url(@nyanza)
    click_on "Destroy this nyanza", match: :first

    assert_text "Nyanza was successfully destroyed"
  end
end
