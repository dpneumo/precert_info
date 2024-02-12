require "application_system_test_case"

class PrecertsTest < ApplicationSystemTestCase
  setup do
    @precert = precerts(:one)
  end

  test "visiting the index" do
    visit precerts_url
    assert_selector "h1", text: "Precerts"
  end

  test "should create precert" do
    visit precerts_url
    click_on "New precert"

    fill_in "Action", with: @precert.action_id
    fill_in "Approved", with: @precert.approved
    fill_in "Confirmation", with: @precert.confirmation
    fill_in "Diagnosis", with: @precert.diagnosis_id
    fill_in "Insurer", with: @precert.insurer_id
    fill_in "Note", with: @precert.note
    fill_in "Patientmrn", with: @precert.patientMRN
    fill_in "Provider", with: @precert.provider_id
    fill_in "Submitted", with: @precert.submitted
    click_on "Create Precert"

    assert_text "Precert was successfully created"
    click_on "Back"
  end

  test "should update Precert" do
    visit precert_url(@precert)
    click_on "Edit this precert", match: :first

    fill_in "Action", with: @precert.action_id
    fill_in "Approved", with: @precert.approved
    fill_in "Confirmation", with: @precert.confirmation
    fill_in "Diagnosis", with: @precert.diagnosis_id
    fill_in "Insurer", with: @precert.insurer_id
    fill_in "Note", with: @precert.note
    fill_in "Patientmrn", with: @precert.patientMRN
    fill_in "Provider", with: @precert.provider_id
    fill_in "Submitted", with: @precert.submitted
    click_on "Update Precert"

    assert_text "Precert was successfully updated"
    click_on "Back"
  end

  test "should destroy Precert" do
    visit precert_url(@precert)
    click_on "Destroy this precert", match: :first

    assert_text "Precert was successfully destroyed"
  end
end
