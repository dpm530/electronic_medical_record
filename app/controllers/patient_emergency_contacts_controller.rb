class PatientEmergencyContactsController < ApplicationController
  before_action :set_patient_emergency_contact, only: [:show, :edit, :update, :destroy]

  # GET /patient_emergency_contacts
  # GET /patient_emergency_contacts.json
  def index
    @patient_emergency_contacts = PatientEmergencyContact.all
  end

  # GET /patient_emergency_contacts/1
  # GET /patient_emergency_contacts/1.json
  def show
  end

   # GET /patient_emergency_contacts/new
   def new
      @patient= Patient.find(params[:patient_id])
      @patient_emergency_contact = @patient.patient_emergency_contacts.build
   end

  # GET /patient_emergency_contacts/1/edit
  def edit
  end

  # POST /patient_emergency_contacts
  # POST /patient_emergency_contacts.json
  def create
     @patient=Patient.find(params[:patient_id])
     @patient_emergency_contact = @patient.patient_emergency_contacts.new(patient_emergency_contact_params)

    respond_to do |format|
      if @patient_emergency_contact.save
        format.html { redirect_to([@patient_emergency_contact.patient, @patient_emergency_contact], notice: 'Patient emergency contact was successfully created.') }
        format.json { render :show, status: :created, location: @patient_emergency_contact }
      else
        format.html { render :new }
        format.json { render json: @patient_emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_emergency_contacts/1
  # PATCH/PUT /patient_emergency_contacts/1.json
  def update
    respond_to do |format|
      if @patient_emergency_contact.update(patient_emergency_contact_params)
        format.html { redirect_to @patient_emergency_contact, notice: 'Patient emergency contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_emergency_contact }
      else
        format.html { render :edit }
        format.json { render json: @patient_emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_emergency_contacts/1
  # DELETE /patient_emergency_contacts/1.json
  def destroy
    @patient_emergency_contact.destroy
    respond_to do |format|
      format.html { redirect_to patient_emergency_contacts_url, notice: 'Patient emergency contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_emergency_contact
      @patient_emergency_contact = PatientEmergencyContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_emergency_contact_params
      params.require(:patient_emergency_contact).permit(:first_name, :last_name, :contact_type, :relationship, :release_of_info, :dob, :address_1, :address_2, :country, :zipcode, :city, :state, :email, :mobile_phone, :work_phone, :home_phone, :other_phone, :comment, :patient_id)
    end
end
