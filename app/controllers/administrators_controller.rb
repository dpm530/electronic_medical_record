class AdministratorsController < ApplicationController
   before_action :authenticate_user!

   def index
      @users = User.all
      @patients = Patient.all
      @library = Library.all
      @intake_notes = IntakeNote.all
      @progress_notes = ProgressNote.all
      @treatment_plans = TreatmentPlan.all
      @termination_notes = TerminationNote.all
      @documents = Document.all
      @notes = 0

      if @intake_notes
         @notes += @intake_notes.length
      end

      if @progress_notes
         @notes += @intake_notes.length
      end

      if @treatment_plans
         @notes += @treatment_plans.length
      end

      if @termination_notes
         @notes += @intake_notes.length
      end
   end


end
