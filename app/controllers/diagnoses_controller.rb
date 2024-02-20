class DiagnosesController < ApplicationController
  before_action :set_diagnosis, only: %i[ show edit update destroy ]

  # GET /diagnoses or /diagnoses.json
  def index
    @pagy, @diagnoses = pagy(Diagnosis.all)
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
    if @diagnosis.save
      redirect_to diagnosis_url(@diagnosis), notice: "Diagnosis was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diagnoses/1 or /diagnoses/1.json
  def update  
    if @diagnosis.update(diagnosis_params)
      redirect_to diagnosis_url(@diagnosis), notice: "Diagnosis was successfully updated."
    else
      render :edit, status: :unprocessable_entity
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
      params.require(:diagnosis).permit(:name, :icd10)
    end
end
