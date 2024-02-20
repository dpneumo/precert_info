class ProvidersController < ApplicationController
  before_action :set_provider, only: %i[ show edit update destroy ]

  # GET /providers or /providers.json
  def index
    @pagy, @providers = pagy(Provider.all)
  end

  # GET /providers/1 or /providers/1.json
  def show
  end

  # GET /providers/new
  def new
    @provider = Provider.new
  end

  # GET /providers/1/edit
  def edit
  end

  # POST /providers or /providers.json
  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      redirect_to provider_url(@provider), notice: "Provider was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /providers/1 or /providers/1.json
  def update
    if @provider.update(provider_params)
      redirect_to provider_url(@provider), notice: "Provider was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /providers/1 or /providers/1.json
  def destroy
    @provider.destroy!
    redirect_to providers_url, notice: "Provider was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def provider_params
      params.require(:provider).permit(:name, :office_id)
    end
end
