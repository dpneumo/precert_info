class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /contacts or /contacts.json
  def index
    @pagy, @contacts = pagy(Contact.all)
  end

  # GET /contacts/1 or /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
    @contact.precert_id = params[:precert_id]
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts or /contacts.json
  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to precert_path(@contact.precert_id), notice: "Contact was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1 or /contacts/1.json
  def update  
    if @contact.update(contact_params)
      redirect_to precert_path(@contact.precert_id), notice: "Contact was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1 or /contacts/1.json
  def destroy
    precert_id = @contact.precert_id
    @contact.destroy!
    redirect_to precert_path(precert_id), notice: "Contact was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:precert_id, :contact_time, :duration, :note)
    end
end
