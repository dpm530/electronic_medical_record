class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  layout 'patient_layout', :only => [:show, :clinician, :notes, :edit]

   # GET /patients
   # GET /patients.json
   def index
      @user = current_user
      @patients = @user.patients
   end

   # GET /patients/1
   # GET /patients/1.json
   def show
      @patient = Patient.find(params[:id])
      @emergency_contacts = @patient.patient_emergency_contacts
      @progress_notes = @patient.progress_notes
      @intake_notes = @patient.intake_notes
      @treatment_plans = @patient.treatment_plans
      @termination_notes = @patient.termination_notes
   end

   def clinician
      @patient = Patient.find(params[:id])
      @clinician = @patient.user
   end

   def notes
      @patient = Patient.find(params[:id])
      @intake_notes = @patient.intake_notes
      @progress_notes = @patient.progress_notes
      @treatment_plans = @patient.treatment_plans
      @termination_notes = @patient.termination_notes

   end

   # GET /patients/new
   def new
      @states = ['FL', 'TX', 'CO', 'NY']
      @users=User.all
      @patient = Patient.new

      @users.each{|u| puts u}
   end

   # GET /patients/1/edit
   def edit
      @users=User.all
      @states = ['FL', 'TX', 'CO', 'NY']
   end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:comment, :first_name, :last_name, :preferred_name, :dob, :birth_sex, :gender_identity, :sexual_orientation, :race, :languages, :marital_status, :employment, :hipaa, :pcp_release, :user_id, :address_1, :address_2, :zipcode, :city, :state, :mobile_phone, :home_phone, :work_phone, :other_phone, :email)
    end
end
