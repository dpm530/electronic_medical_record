class CliniciansController < ApplicationController
   before_action :authenticate_user!

   def index
      @patients = current_user.patients
      @intake_notes = current_user.intake_notes
      @progress_notes = current_user.progress_notes
      @treatment_plans = current_user.treatment_plans
      @termination_notes = current_user.termination_notes
      @documents = []
      if @patients
         @patients.each do |p|
            @documents << p.documents
         end
      end
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
