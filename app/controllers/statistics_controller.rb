class StatisticsController < ApplicationController


   def index
      @users = User.all
      @aventura_staff = User.where(default_location: 'Aventura Office').all
      @doral_staff = User.where(default_location: 'Doral Office').all
      @plantation_staff = User.where(default_location: 'Plantation Office').all
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
