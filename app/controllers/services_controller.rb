class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show edit update destroy ]

  # GET /services or /services.json
  def index
    @pagy, @services = pagy(Service.order(:servtype, :name))
  end

  # GET /services/1 or /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services or /services.json
  def create
    @service = Service.new(service_params)
    respond_to do |format|
      if @service.save
        format.html { redirect_to services_url, notice: "Service was successfully created." }
      else
        format.html { redirect_back fallback_location: root_path , notice: 'Something went wrong.' }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1 or /services/1.json
  def update    
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_url, notice: "Service was successfully updated." }
      else
        format.html { redirect_back fallback_location: root_path , notice: 'Something went wrong.' }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1 or /services/1.json
  def destroy
    @service.destroy!
    redirect_to services_url, notice: "Service was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:name, :cptcode, :servtype)
    end
end
