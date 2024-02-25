class PrecertsController < ApplicationController
  before_action :set_precert, only: %i[ show edit update destroy ]

  # GET /precerts or /precerts.json
  def index
    @pagy, @precerts = pagy(Precert.all)
  end

  # GET /precerts/1 or /precerts/1.json
  def show
    @contact =  @precert.contacts.build
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
    @precert = Precert.new(precert_params)
    if @precert.save
      redirect_to precert_url(@precert), notice: "Precert was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /precerts/1 or /precerts/1.json
  def update  
    if @precert.update(precert_params)
      redirect_to precert_url(@precert), notice: "Precert was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /precerts/1 or /precerts/1.json
  def destroy
    @precert.destroy!
    redirect_to precerts_url, notice: "Precert was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precert
      @precert = Precert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def precert_params
      params.require(:precert).permit(:patientMRN, :service_id, :diagnosis_id, :provider_id, :insurer_id, :submitted, :approved, :confirmation, :note)
    end
end
