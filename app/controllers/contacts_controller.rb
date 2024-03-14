class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /precerts/1/contacts/1
  def show
  end

  # GET /precerts/1/contacts/new
  def new
    @contact = Precert.find(params[:precert_id]).contacts.build
    render 'precerts/contacts/new'
  end

  # GET /precerts/1/contacts/1/edit
  def edit
    render 'precerts/contacts/edit'
  end

  # POST /precerts/1/contacts
  def create
    @contact = Contact.new(contact_params)
    @contact.duration = time_diff if @contact.duration.blank?

    respond_to do |format|
      if @contact.save
        format.html { redirect_to precert_path(@contact.precert), notice: "Contact was successfully created." }
      else
        format.html { redirect_back fallback_location: root_path , notice: 'Something went wrong.' }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  def update 
    @contact.duration = time_diff if @contact.duration.blank?
    
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to precert_path(@contact.precert), notice: "Contact was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.turbo_stream { render :form_update, status: :unprocessable_entity }
      end
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
    params.require(:contact).permit(:precert_id, :contact_date, :duration, :note)
  end

  def time_diff
    tz_correction = 6 * 60
    minutes_diff =  (Time.now.to_i - @contact.contact_date.to_i)/60
    minutes_diff - tz_correction
  end
end
