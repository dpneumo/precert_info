require "test_helper"

class Peer2peersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peer2peer = peer2peers(:one)
  end

  test "should get index" do
    get peer2peers_url
    assert_response :success
  end

  test "should get new" do
    get new_peer2peer_url
    assert_response :success
  end

  test "should create peer2peer" do
    assert_difference("Peer2peer.count") do
      post peer2peers_url, params: { peer2peer: { accept: @peer2peer.accept, code: @peer2peer.code, note: @peer2peer.note, peer: @peer2peer.peer, scheduled: @peer2peer.scheduled } }
    end

    assert_redirected_to peer2peer_url(Peer2peer.last)
  end

  test "should show peer2peer" do
    get peer2peer_url(@peer2peer)
    assert_response :success
  end

  test "should get edit" do
    get edit_peer2peer_url(@peer2peer)
    assert_response :success
  end

  test "should update peer2peer" do
    patch peer2peer_url(@peer2peer), params: { peer2peer: { accept: @peer2peer.accept, code: @peer2peer.code, note: @peer2peer.note, peer: @peer2peer.peer, scheduled: @peer2peer.scheduled } }
    assert_redirected_to peer2peer_url(@peer2peer)
  end

  test "should destroy peer2peer" do
    assert_difference("Peer2peer.count", -1) do
      delete peer2peer_url(@peer2peer)
    end

    assert_redirected_to peer2peers_url
  end
end
