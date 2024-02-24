require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @precert = precerts(:one)
    @contact = contacts(:one)
  end

  test "should get index" do
    get precert_contacts_url(@precert)
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    ctime = Time.now; cdur = 10
    assert_difference("Contact.count") do
      post precert_contacts_url(@precert), params: { contact: { contact_time: ctime, duration: cdur, note: 'Wow!' } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_precert_contact_url(@precert, @contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { contact_time: @contact.contact_time, duration: @contact.duration, note: @contact.note, precert_id: @contact.precert_id } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference("Contact.count", -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
