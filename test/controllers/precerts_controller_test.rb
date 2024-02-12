require "test_helper"

class PrecertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @precert = precerts(:one)
  end

  test "should get index" do
    get precerts_url
    assert_response :success
  end

  test "should get new" do
    get new_precert_url
    assert_response :success
  end

  test "should create precert" do
    assert_difference("Precert.count") do
      post precerts_url, params: { precert: { service_id: @precert.service_id, approved: @precert.approved, confirmation: @precert.confirmation, diagnosis_id: @precert.diagnosis_id, insurer_id: @precert.insurer_id, note: @precert.note, patientMRN: @precert.patientMRN, provider_id: @precert.provider_id, submitted: @precert.submitted } }
    end

    assert_redirected_to precert_url(Precert.last)
  end

  test "should show precert" do
    get precert_url(@precert)
    assert_response :success
  end

  test "should get edit" do
    get edit_precert_url(@precert)
    assert_response :success
  end

  test "should update precert" do
    patch precert_url(@precert), params: { precert: { service_id: @precert.service_id, approved: @precert.approved, confirmation: @precert.confirmation, diagnosis_id: @precert.diagnosis_id, insurer_id: @precert.insurer_id, note: @precert.note, patientMRN: @precert.patientMRN, provider_id: @precert.provider_id, submitted: @precert.submitted } }
    assert_redirected_to precert_url(@precert)
  end

  test "should destroy precert" do
    assert_difference("Precert.count", -1) do
      delete precert_url(@precert)
    end

    assert_redirected_to precerts_url
  end
end
