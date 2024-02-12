class PrecertsController < ApplicationController
  before_action :set_precert, only: %i[ show edit update destroy ]

  # GET /precerts or /precerts.json
  def index
    @precerts = Precert.all
  end

  # GET /precerts/1 or /precerts/1.json
  def show
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

    respond_to do |format|
      if @precert.save
        format.html { redirect_to precert_url(@precert), notice: "Precert was successfully created." }
        format.json { render :show, status: :created, location: @precert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @precert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precerts/1 or /precerts/1.json
  def update
    respond_to do |format|
      if @precert.update(precert_params)
        format.html { redirect_to precert_url(@precert), notice: "Precert was successfully updated." }
        format.json { render :show, status: :ok, location: @precert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @precert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precerts/1 or /precerts/1.json
  def destroy
    @precert.destroy!

    respond_to do |format|
      format.html { redirect_to precerts_url, notice: "Precert was successfully destroyed." }
      format.json { head :no_content }
    end
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
