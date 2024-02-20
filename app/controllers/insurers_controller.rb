class InsurersController < ApplicationController
  before_action :set_insurer, only: %i[ show edit update destroy ]

  # GET /insurers or /insurers.json
  def index
    @pagy, @insurers = pagy(Insurer.all)
  end

  # GET /insurers/1 or /insurers/1.json
  def show
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
    if @insurer.save
      redirect_to insurer_url(@insurer), notice: "Insurer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /insurers/1 or /insurers/1.json
  def update    
    if @insurer.update(insurer_params)
      redirect_to insurer_url(@insurer), notice: "Insurer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
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
