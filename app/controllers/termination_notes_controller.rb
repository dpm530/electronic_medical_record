class TerminationNotesController < ApplicationController
  before_action :set_termination_note, only: [:show, :edit, :update, :destroy]
  layout 'patient_layout'

  # GET /termination_notes
  # GET /termination_notes.json
  def index
    @termination_notes = TerminationNote.all
  end

   # GET /termination_notes/1
   # GET /termination_notes/1.json
   def show
      @patient = Patient.find(params[:patient_id])
   end

   # GET /termination_notes/new
   def new
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @termination_note = @patient.termination_notes.build
   end

   # GET /termination_notes/1/edit
   def edit
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @termination_note = @patient.termination_notes.find(params[:id])
   end

   # POST /termination_notes
   # POST /termination_notes.json
   def create
      @patient = Patient.find(params[:patient_id])
      @termination_note = @patient.termination_notes.new(termination_note_params)

      respond_to do |format|
         if @termination_note.save
            format.html { redirect_to patient_path(@patient), notice: 'Termination note was successfully created.'}
            format.json { render :show, status: :created, location: @termination_note }
         else
            format.html { render :new }
            format.json { render json: @termination_note.errors, status: :unprocessable_entity }
         end
      end
   end

   # PATCH/PUT /termination_notes/1
   # PATCH/PUT /termination_notes/1.json
   def update
      @patient = Patient.find(params[:patient_id])
      @termination_note = @patient.termination_notes.find(params[:id])

      respond_to do |format|
         if @termination_note.update(termination_note_params)
            format.html { redirect_to patient_path(@patient), notice: 'Termination note was successfully updated.' }
            format.json { render :show, status: :ok, location: @termination_note }
         else
            format.html { render :edit }
            format.json { render json: @termination_note.errors, status: :unprocessable_entity }
         end
      end
   end

   # DELETE /termination_notes/1
   # DELETE /termination_notes/1.json
   def destroy
      @patient = Patient.find(params[:patient_id])
      @termination_note = @patient.termination_notes.find(params[:id])
      @termination_note.destroy

      respond_to do |format|
      format.html { redirect_to patient_path(@patient), notice: 'Termination note was successfully destroyed.' }
      format.json { head :no_content }
      end
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_termination_note
      @termination_note = TerminationNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def termination_note_params
      params.require(:termination_note).permit(:user_id, :patient_id, :date, :time, :reason, :main_complaint, :most_recent_diagnosis, :recent_diagnosis_justification, :treatment_modality, :treatment_goals, :clinician_signature)
    end
end
