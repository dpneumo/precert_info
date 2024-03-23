class DiagnosesController < ApplicationController
  before_action :set_diagnosis, only: %i[ show edit update destroy ]

  # GET /diagnoses or /diagnoses.json
  def index
    @pagy, @diagnoses = pagy(Diagnosis.order(:dxtype, :name))
  end

  # GET /diagnoses/1 or /diagnoses/1.json
  def show
  end

  # GET /diagnoses/new
  def new
    @diagnosis = Diagnosis.new
  end

  # GET /diagnoses/1/edit
  def edit
  end

  # POST /diagnoses or /diagnoses.json
  def create
    @diagnosis = Diagnosis.new(diagnosis_params)
    respond_to do |format|
      if @diagnosis.save
        format.html { redirect_to diagnoses_url, notice: "Diagnosis was successfully created." }
      else
        format.html { redirect_back fallback_location: root_path , notice: 'Something went wrong.' }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnoses/1 or /diagnoses/1.json
  def update  
    respond_to do |format|
      if @diagnosis.update(diagnosis_params)
        format.html { redirect_to diagnoses_url, notice: "Diagnosis was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnoses/1 or /diagnoses/1.json
  def destroy
    @diagnosis.destroy!
    redirect_to diagnoses_url, notice: "Diagnosis was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis
      @diagnosis = Diagnosis.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diagnosis_params
      params.require(:diagnosis).permit(:name, :icd10, :dxtype)
    end
end
