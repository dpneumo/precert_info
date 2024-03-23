class PrecertsController < ApplicationController
  before_action :set_precert, only: %i[ show edit update destroy ]

  # GET /precerts or /precerts.json
  def index
    @pagy, @precerts = pagy(Precert.all, items: 12)
  end

  # GET /precerts/1 or /precerts/1.json
  def show
    @contact =  @precert.contacts.build
    @peer2peer = @precert.peer2peers.build
  end

  # GET /precerts/new
  def new
    @precert = Precert.new
  end

  # GET /precerts/1/edit
  def edit
  end

  # POST /precerts or /precerts.json
  def create
    set_status_and_approved(precert_params)  
    @precert = Precert.new(precert_params)
    if @precert.save
      redirect_to precert_url(@precert), 
                  notice: "Precert was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /precerts/1 or /precerts/1.json
  def update
    parms = set_status_and_approved(precert_params)  
    if @precert.update(parms)
      redirect_to precert_url(@precert), 
                  notice: "Precert was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /precerts/1 or /precerts/1.json
  def destroy
    @precert.destroy!
    redirect_to precerts_url, 
                notice: "Precert was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precert
      @precert = Precert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def precert_params
      params.require(:precert).permit(:patientMRN, :service_id, :diagnosis_id, :provider_id, :insurer_id, :status, :approved, :confirmation, :submission_date, :approval_date, :closed_date, :note)
    end

    def set_status_and_approved(params)
      params[:status] = :submitted if !params[:submission_date].blank?
      params[:status] = :closed if !params[:closed_date].blank?
      params[:approved] = true if !params[:approval_date].blank?
      params
    end

    def the_present
      {contact_date: Date.today}
    end
end
