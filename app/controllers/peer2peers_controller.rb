class Peer2peersController < ApplicationController
  before_action :set_peer2peer, only: %i[ show edit update destroy ]

  # GET /peer2peers/1
  def show
  end

  # GET /peer2peers/new
  def new
    @peer2peer = Peer2peer.new
  end

  # GET /peer2peers/1/edit
  def edit
  end

  # POST /peer2peers
  def create
    @peer2peer = Peer2peer.new(peer2peer_params)
    if @peer2peer.save
      redirect_to precerts_path, notice: "Peer2Peer was successfully created."
    else
      redirect_back fallback_location: root_path , notice: 'Something went wrong.'
    end
  end

  # PATCH/PUT /peer2peers/1
  def update   
    if @peer2peer.update(peer2peer_params)
      redirect_to precert_path(@peer2peer.precert), notice: "Peer2peer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /peer2peers/1 or /peer2peers/1.json
  def destroy
    @peer2peer.destroy
    redirect_to precert_path(@peer2peer.precert), status: 303, notice: "Peer2peer was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peer2peer
      @peer2peer = Peer2peer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def peer2peer_params
      params.require(:peer2peer).permit(:precert_id, :scheduled, :peer, :accept, :code, :note)
    end
end
