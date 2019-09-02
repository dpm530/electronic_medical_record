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
      @aventura_consults = 0
      @doral_consults = 0
      @plantation_consults = 0
      @aventura_patients = 0
      @doral_patients = 0
      @plantation_patients = 0

      @aventura_staff.each do |a|
         consults = a.progress_notes.length
         patients = a.patients.length
         @aventura_consults += consults
         @aventura_patients += patients
      end

      @doral_staff.each do |d|
         consults = d.progress_notes.length
         patients = d.patients.length
         @doral_consults += consults
         @doral_patients += patients
      end

      @plantation_staff.each do |p|
         consults = p.progress_notes.length
         patients = p.patients.length
         @plantation_consults += consults
         @plantation_patients += patients
      end

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
