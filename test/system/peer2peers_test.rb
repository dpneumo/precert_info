require "application_system_test_case"

class Peer2peersTest < ApplicationSystemTestCase
  setup do
    @peer2peer = peer2peers(:one)
  end

  test "visiting the index" do
    visit peer2peers_url
    assert_selector "h1", text: "Peer2peers"
  end

  test "should create peer2peer" do
    visit peer2peers_url
    click_on "New peer2peer"

    check "Accept" if @peer2peer.accept
    fill_in "Code", with: @peer2peer.code
    fill_in "Note", with: @peer2peer.note
    fill_in "Peer", with: @peer2peer.peer
    fill_in "Scheduled", with: @peer2peer.scheduled
    click_on "Create Peer2peer"

    assert_text "Peer2peer was successfully created"
    click_on "Back"
  end

  test "should update Peer2peer" do
    visit peer2peer_url(@peer2peer)
    click_on "Edit this peer2peer", match: :first

    check "Accept" if @peer2peer.accept
    fill_in "Code", with: @peer2peer.code
    fill_in "Note", with: @peer2peer.note
    fill_in "Peer", with: @peer2peer.peer
    fill_in "Scheduled", with: @peer2peer.scheduled
    click_on "Update Peer2peer"

    assert_text "Peer2peer was successfully updated"
    click_on "Back"
  end

  test "should destroy Peer2peer" do
    visit peer2peer_url(@peer2peer)
    click_on "Destroy this peer2peer", match: :first

    assert_text "Peer2peer was successfully destroyed"
  end
end
