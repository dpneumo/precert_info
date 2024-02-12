require "application_system_test_case"

class InsurersTest < ApplicationSystemTestCase
  setup do
    @insurer = insurers(:one)
  end

  test "visiting the index" do
    visit insurers_url
    assert_selector "h1", text: "Insurers"
  end

  test "should create insurer" do
    visit insurers_url
    click_on "New insurer"

    fill_in "Name", with: @insurer.name
    click_on "Create Insurer"

    assert_text "Insurer was successfully created"
    click_on "Back"
  end

  test "should update Insurer" do
    visit insurer_url(@insurer)
    click_on "Edit this insurer", match: :first

    fill_in "Name", with: @insurer.name
    click_on "Update Insurer"

    assert_text "Insurer was successfully updated"
    click_on "Back"
  end

  test "should destroy Insurer" do
    visit insurer_url(@insurer)
    click_on "Destroy this insurer", match: :first

    assert_text "Insurer was successfully destroyed"
  end
end
