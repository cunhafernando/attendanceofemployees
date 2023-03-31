require "application_system_test_case"

class SectionalsTest < ApplicationSystemTestCase
  setup do
    @sectional = sectionals(:one)
  end

  test "visiting the index" do
    visit sectionals_url
    assert_selector "h1", text: "Sectionals"
  end

  test "should create sectional" do
    visit sectionals_url
    click_on "New sectional"

    fill_in "Name", with: @sectional.name
    click_on "Create Sectional"

    assert_text "Sectional was successfully created"
    click_on "Back"
  end

  test "should update Sectional" do
    visit sectional_url(@sectional)
    click_on "Edit this sectional", match: :first

    fill_in "Name", with: @sectional.name
    click_on "Update Sectional"

    assert_text "Sectional was successfully updated"
    click_on "Back"
  end

  test "should destroy Sectional" do
    visit sectional_url(@sectional)
    click_on "Destroy this sectional", match: :first

    assert_text "Sectional was successfully destroyed"
  end
end
