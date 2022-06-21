require "application_system_test_case"

class KwalesTest < ApplicationSystemTestCase
  setup do
    @kwale = kwales(:one)
  end

  test "visiting the index" do
    visit kwales_url
    assert_selector "h1", text: "Kwales"
  end

  test "should create kwale" do
    visit kwales_url
    click_on "New kwale"

    click_on "Create Kwale"

    assert_text "Kwale was successfully created"
    click_on "Back"
  end

  test "should update Kwale" do
    visit kwale_url(@kwale)
    click_on "Edit this kwale", match: :first

    click_on "Update Kwale"

    assert_text "Kwale was successfully updated"
    click_on "Back"
  end

  test "should destroy Kwale" do
    visit kwale_url(@kwale)
    click_on "Destroy this kwale", match: :first

    assert_text "Kwale was successfully destroyed"
  end
end
