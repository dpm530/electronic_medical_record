class AddTreatmentPlanProgressColumnToProgressNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :progress_notes, :treatment_plan_progress, :text
  end
end
