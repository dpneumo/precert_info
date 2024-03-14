class Peer2peersController < ApplicationController
  before_action :set_peer2peer, only: %i[ show edit update destroy ]

  # GET /precerts/1/peer2peers/1
  def show
  end

  # GET /precerts/1/peer2peers/new
  def new
    @peer2peer = Precert.find(params[:precert_id]).peer2peers.build
    render 'precerts/peer2peers/new'
  end

  # GET /precerts/1/peer2peers/1/edit
  def edit
    render 'precerts/peer2peers/edit'
  end

  # POST /precerts/1/peer2peers
  def create
    @peer2peer = Peer2peer.new(peer2peer_params)
    @peer2peer.duration = time_diff if @peer2peer.duration.blank?

    respond_to do |format|
      if @peer2peer.save
        format.html { redirect_to precert_path(@peer2peer.precert), notice: "Peer2Peer was successfully created." }
      else
        format.html { redirect_back fallback_location: root_path , notice: 'Something went wrong.' }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precerts/1/peer2peers/1
  def update   
    @peer2peer.duration = time_diff if @peer2peer.duration.blank?

    respond_to do |format|
      if @peer2peer.update(peer2peer_params)
        format.html { redirect_to precert_path(@peer2peer.precert), notice: "Peer2peer was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peer2peers/1
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
      params.require(:peer2peer).permit(:precert_id, :p2p_date, :duration, :provider_id, :peer, :note)
    end

  def time_diff
    tz_correction = 6 * 60
    minutes_diff =  (Time.now.to_i - @peer2peer.p2p_date.to_i)/60
    minutes_diff - tz_correction
  end
end
