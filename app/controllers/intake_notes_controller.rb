class IntakeNotesController < ApplicationController
   before_action :set_intake_note, only: [:show]
   layout 'patient_layout'

   # GET /intake_notes
   # GET /intake_notes.json
   def index
      @intake_notes = IntakeNote.all
   end

   # GET /intake_notes/1
   # GET /intake_notes/1.json
   def show
      @patient = Patient.find(params[:patient_id])
   end

   # GET /intake_notes/new
   def new
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @intake_note = @patient.intake_notes.build
      @location = ['Aventura', 'Doral', 'Phone', 'Other']
      @participants = ['Client Only', 'Client and Others', 'Others Only']
   end

   # GET /intake_notes/1/edit
   def edit
      @patient = Patient.find(params[:patient_id])
      @intake_note = @patient.intake_notes.find(params[:id])
      @users = User.all
      @location = ['Aventura', 'Doral', 'Phone', 'Other']
      @participants = ['Client Only', 'Client and Others', 'Others Only']
   end

   # POST /intake_notes
   # POST /intake_notes.json
   def create
      @patient = Patient.find(params[:patient_id])
      @intake_note = @patient.intake_notes.new(intake_note_params)

      respond_to do |format|
         if @intake_note.save
            format.html { redirect_to( [@intake_note.patient, @intake_note], notice: 'Intake note was successfully created.')}
            format.json { render :show, status: :created, location: @intake_note }
         else
            format.html { render :new }
            format.json { render json: @intake_note.errors, status: :unprocessable_entity }
         end
      end
   end

   # PATCH/PUT /intake_notes/1
   # PATCH/PUT /intake_notes/1.json
   def update
      @patient = Patient.find(params[:patient_id])
      @intake_note = @patient.intake_notes.find(params[:id])

      respond_to do |format|
         if @intake_note.update(intake_note_params)
            format.html { redirect_to([@intake_note.patient, @intake_note], notice: 'Intake note was successfully updated.' )}
            format.json { render :show, status: :ok, location: @intake_note }
         else
            format.html { render :edit }
            format.json { render json: @intake_note.errors, status: :unprocessable_entity }
         end
      end
   end

   # DELETE /intake_notes/1
   # DELETE /intake_notes/1.json
   def destroy
      @patient = Patient.find(params[:patient_id])
      @intake_note = @patient.intake_notes.find(params[:id])
      @intake_note.destroy

      respond_to do |format|
         format.html { redirect_to ('/patients/' + (@patient.id).to_s + '/notes'), notice: 'Intake note was successfully destroyed.' }
         format.json { head :no_content }
      end
   end

   private
      # Use callbacks to share common setup or constraints between actions.
      def set_intake_note
         @intake_note = IntakeNote.find(params[:id])
      end


      # Never trust parameters from the scary internet, only allow the white list through.
      def intake_note_params
         params.require(:intake_note).permit(:user_id, :patient_id, :date, :time, :duration, :location, :participants, :presenting_problems, :general_appearance, :dress, :motor_activity, :insight, :judgement, :affect, :mood, :orientation, :memory, :attention_concentration, :thought_content, :perception, :flow_of_thought, :interview_behavior, :speech, :safety_issues, :identification, :history_present_problem, :past_psychiatric_history, :trauma_history, :family_psychiatric_history, :medical_history, :current_medications, :substance_use, :family_history, :social_history, :development_history, :educational_occupational_history, :legal_history, :strength_limitations, :other_information, :diagnosis_description, :diagnosis_justification, :clinician_signature)
      end
end
