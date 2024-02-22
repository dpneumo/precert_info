class CallsController < ApplicationController
  before_action :set_call, only: %i[ show edit update destroy ]

  # GET /calls or /calls.json
  def index
    @pagy, @calls = pagy(Call.all)
  end

  # GET /calls/1 or /calls/1.json
  def show
  end

  # GET /calls/new
  def new
    @call = Call.new
  end

  # GET /calls/1/edit
  def edit
  end

  # POST /calls or /calls.json
  def create
    @call = @precerts.calls.create(call_params)
    if @call.save
      redirect_to call_url(@call), notice: "Call was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calls/1 or /calls/1.json
  def update  
    if @call.update(call_params)
      redirect_to call_url(@call), notice: "Call was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /calls/1 or /calls/1.json
  def destroy
    @call.destroy!
    redirect_to calls_url, notice: "Call was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call
      @call = @precert.calls.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def call_params
      params.require(:call).permit(:precert_id, :call_time, :duration, :note)
    end
end
