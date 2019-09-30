class ProgressNotesController < ApplicationController
   before_action :set_progress_note, only: [:show]
   layout 'patient_layout'

   # GET /progress_notes
   # GET /progress_notes.json
   def index
      @progress_notes = ProgressNote.all
   end

   # GET /progress_notes/1
   # GET /progress_notes/1.json
   def show
      @patient = Patient.find(params[:patient_id])
   end

   # GET /progress_notes/new
   def new
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @progress_note = @patient.progress_notes.build
      @location = ['Aventura', 'Doral', 'Phone', 'Other']
      @participants = ['Client Only', 'Client and Others', 'Others Only']
      @interventions_used = ['Cognitive Challenging','Cognitive Refocusing','Cognitive Reframing','Comminication Skills','Compliance Skills','Compliance Issues','DBT','Exploration of Coping Paterns','Exploration of Emotions','Exploration of Relationship Patterns','Guided Imagery','Interactive Feedback','Interpersonal Resolutions','Mindfulness Training','Preventative Services','Psycho-Education','Relaxation/Deep Breathing','Review of Treatment Plan/Progress','Role-Play/Behavioral Rehersal','Structured Problem Solving','Supportive Reflection','Symptom Management']
   end

   # GET /progress_notes/1/edit
   def edit
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @progress_note = @patient.progress_notes.find(params[:id])
      @location = ['Aventura', 'Doral', 'Phone', 'Other']
      @participants = ['Client Only', 'Client and Others', 'Others Only']
      @interventions_used = ['Cognitive Challenging','Cognitive Refocusing','Cognitive Reframing','Comminication Skills','Compliance Skills','Compliance Issues','DBT','Exploration of Coping Paterns','Exploration of Emotions','Exploration of Relationship Patterns','Guided Imagery','Interactive Feedback','Interpersonal Resolutions','Mindfulness Training','Preventative Services','Psycho-Education','Relaxation/Deep Breathing','Review of Treatment Plan/Progress','Role-Play/Behavioral Rehersal','Structured Problem Solving','Supportive Reflection','Symptom Management']
   end

   # POST /progress_notes
   # POST /progress_notes.json
   def create
      @patient = Patient.find(params[:patient_id])
      @progress_note = @patient.progress_notes.new(progress_note_params)
      puts "="*100
      puts @progress_note.interventions_used
      puts "="*100

      respond_to do |format|
         if @progress_note.save
            format.html { redirect_to([@progress_note.patient, @progress_note] , notice: 'Progress note was successfully created.')}
            format.json { render :show, status: :created, location: @progress_note }
         else
            format.html { render :new }
            format.json { render json: @progress_note.errors, status: :unprocessable_entity }
         end
      end
   end

   # PATCH/PUT /progress_notes/1
   # PATCH/PUT /progress_notes/1.json
   def update
      @patient = Patient.find(params[:patient_id])
      @progress_note = @patient.progress_notes.find(params[:id])

      respond_to do |format|
         if @progress_note.update(progress_note_params)
            format.html { redirect_to([@progress_note.patient, @progress_note], notice: 'Progress note was successfully updated.' )}
            format.json { render :show, status: :ok, location: @progress_note }
         else
            format.html { render :edit }
            format.json { render json: @progress_note.errors, status: :unprocessable_entity }
         end
      end
   end

   # DELETE /progress_notes/1
   # DELETE /progress_notes/1.json
   def destroy
      @patient = Patient.find(params[:patient_id])
      @progress_note = @patient.progress_notes.find(params[:id])
      @progress_note.destroy

      respond_to do |format|
         format.html { redirect_to ('/patients/' + (@patient.id).to_s + '/notes'), notice: 'Progress note was successfully destroyed.' }
         format.json { head :no_content }
      end
   end

   private
      # Use callbacks to share common setup or constraints between actions.
      def set_progress_note
         @progress_note = ProgressNote.find(params[:id])
      end


      # Never trust parameters from the scary internet, only allow the white list through.
      def progress_note_params
         params.require(:progress_note).permit(:user_id, :patient_id, :date, :time, :duration, :location, :participants, :diagnosis_description, :diagnostic_justification, :cognitive_functioning, :affect, :mood, :interpersonal, :functional_status, :safety_issues, :medications, :symptoms_description, :relevant_content, :additional_notes, :treatment_plan_progress, :plan, :recommendation, :treatment_frequency, :clinician_signature,interventions_used: [])
      end
end
