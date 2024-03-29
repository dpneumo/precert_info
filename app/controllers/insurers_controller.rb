class InsurersController < ApplicationController
  before_action :set_insurer, only: %i[ edit update destroy ]

  # GET /insurers or /insurers.json
  def index
    @pagy, @insurers = pagy(Insurer.order(:name), items: 12)
  end

  # GET /insurers/new
  def new
    @insurer = Insurer.new
  end

  # GET /insurers/1/edit
  def edit
  end

  # POST /insurers or /insurers.json
  def create
    @insurer = Insurer.new(insurer_params)
    respond_to do |format|
      if @insurer.save
        format.html { redirect_to insurers_url, notice: "Insurer was successfully created." }
      else
        format.html { redirect_back fallback_location: root_path , notice: 'Something went wrong.' }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurers/1 or /insurers/1.json
  def update    
    respond_to do |format|
      if @insurer.update(insurer_params)
          format.html { redirect_to insurers_url, notice: "Insurer was successfully updated." }
      else
        format.html { redirect_back fallback_location: root_path , notice: 'Something went wrong.' }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurers/1 or /insurers/1.json
  def destroy
    @insurer.destroy!
    redirect_to insurers_url, notice: "Insurer was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurer
      @insurer = Insurer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insurer_params
      params.require(:insurer).permit(:name)
    end
end
