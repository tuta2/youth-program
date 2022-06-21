require "application_system_test_case"

class NairobisTest < ApplicationSystemTestCase
  setup do
    @nairobi = nairobis(:one)
  end

  test "visiting the index" do
    visit nairobis_url
    assert_selector "h1", text: "Nairobis"
  end

  test "should create nairobi" do
    visit nairobis_url
    click_on "New nairobi"

    click_on "Create Nairobi"

    assert_text "Nairobi was successfully created"
    click_on "Back"
  end

  test "should update Nairobi" do
    visit nairobi_url(@nairobi)
    click_on "Edit this nairobi", match: :first

    click_on "Update Nairobi"

    assert_text "Nairobi was successfully updated"
    click_on "Back"
  end

  test "should destroy Nairobi" do
    visit nairobi_url(@nairobi)
    click_on "Destroy this nairobi", match: :first

    assert_text "Nairobi was successfully destroyed"
  end
end
