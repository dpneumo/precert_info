class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /contacts/1
  def show
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to precerts_path, notice: "Contact was successfully created."
    else
      redirect_back fallback_location: root_path , notice: 'Something went wrong.'
    end
  end

  # PATCH/PUT /contacts/1
  def update  
    if @contact.update(contact_params)
      redirect_to precert_path(@contact.precert), notice: "Contact was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
    redirect_to precert_path(@contact.precert), status: 303, notice: "Contact was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:precert_id, :contact_date, :contact_time, :duration, :note)
    end
end
