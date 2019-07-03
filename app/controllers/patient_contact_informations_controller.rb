class PatientContactInformationsController < ApplicationController


  # GET /patient_contact_informations
  # GET /patient_contact_informations.json
  def index
    @patient_contact_informations = PatientContactInformation.all
  end

   # GET /patient_contact_informations/1
   # GET /patient_contact_informations/1.json
   def show
      @patient=Patient.find(params[:patient_id])
      @patient_contact_information=@patient.patient_contact_informations.find(params[:id])
   end

   # GET /patient_contact_informations/new
   def new
      @patient = Patient.find(params[:patient_id])

      puts '='*100
      puts @patient
      puts '='*100

      @patient_contact_information = @patient.patient_contact_informations.build

      respond_to do |format|
         format.html # new.html.erb

         format.xml  { render :xml => @patient_contact_information }
      end
   end

  # GET /patient_contact_informations/1/edit
  def edit
  end

  # POST /patient_contact_informations
  # POST /patient_contact_informations.json
  def create

     @patient = Patient.find(params[:patient_id])
     @patient_contact_information = @patient.patient_contact_informations.new(patient_contact_information_params)

    respond_to do |format|
      if @patient_contact_information.save
        format.html { redirect_to([@patient_contact_information.patient, @patient_contact_information], notice: 'Patient contact information was successfully created.') }
        format.json { render :show, status: :created, location: @patient_contact_information }
      else
        format.html { render :new }
        format.json { render json: @patient_contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_contact_informations/1
  # PATCH/PUT /patient_contact_informations/1.json
  def update
    respond_to do |format|
      if @patient_contact_information.update(patient_contact_information_params)
        format.html { redirect_to @patient_contact_information, notice: 'Patient contact information was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_contact_information }
      else
        format.html { render :edit }
        format.json { render json: @patient_contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_contact_informations/1
  # DELETE /patient_contact_informations/1.json
  def destroy
    @patient_contact_information.destroy
    respond_to do |format|
      format.html { redirect_to patient_contact_informations_url, notice: 'Patient contact information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_contact_information
      @patient_contact_information = PatientContactInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_contact_information_params
      params.require(:patient_contact_information).permit(:email, :mobile_phone, :home_phone, :work_phone, :other_phone, :address_1, :address_2, :zipcode, :city, :state, :patient_id)
    end
end
