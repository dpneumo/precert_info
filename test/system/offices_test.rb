require "application_system_test_case"

class OfficesTest < ApplicationSystemTestCase
  setup do
    @office = offices(:one)
  end

  test "visiting the index" do
    visit offices_url
    assert_selector "h1", text: "Offices"
  end

  test "should create office" do
    visit offices_url
    click_on "New office"

    fill_in "City", with: @office.city
    fill_in "Name", with: @office.name
    fill_in "Ph main", with: @office.ph_main
    fill_in "State", with: @office.state
    fill_in "Street1", with: @office.street1
    fill_in "Street2", with: @office.street2
    fill_in "Zip", with: @office.zip
    click_on "Create Office"

    assert_text "Office was successfully created"
    click_on "Back"
  end

  test "should update Office" do
    visit office_url(@office)
    click_on "Edit this office", match: :first

    fill_in "City", with: @office.city
    fill_in "Name", with: @office.name
    fill_in "Ph main", with: @office.ph_main
    fill_in "State", with: @office.state
    fill_in "Street1", with: @office.street1
    fill_in "Street2", with: @office.street2
    fill_in "Zip", with: @office.zip
    click_on "Update Office"

    assert_text "Office was successfully updated"
    click_on "Back"
  end

  test "should destroy Office" do
    visit office_url(@office)
    click_on "Destroy this office", match: :first

    assert_text "Office was successfully destroyed"
  end
end
