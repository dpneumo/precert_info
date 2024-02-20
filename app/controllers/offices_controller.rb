class OfficesController < ApplicationController
  before_action :set_office, only: %i[ show edit update destroy ]

  # GET /offices or /offices.json
  def index
    @pagy, @offices = pagy(Office.all)
  end

  # GET /offices/1 or /offices/1.json
  def show
  end

  # GET /offices/new
  def new
    @office = Office.new
  end

  # GET /offices/1/edit
  def edit
  end

  # POST /offices or /offices.json
  def create
    @office = Office.new(office_params)
    if @office.save
      redirect_to office_url(@office), notice: "Office was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offices/1 or /offices/1.json
  def update
    if @office.update(office_params)
      redirect_to office_url(@office), notice: "Office was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /offices/1 or /offices/1.json
  def destroy
    @office.destroy!
    redirect_to offices_url, notice: "Office was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office
      @office = Office.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def office_params
      params.require(:office).permit(:name, :street1, :street2, :city, :state, :zip, :ph_main)
    end
end
