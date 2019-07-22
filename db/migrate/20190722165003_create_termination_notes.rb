class CreateTerminationNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :termination_notes do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :date
      t.time :time
      t.string :reason
      t.text :main_complaint
      t.string :most_recent_diagnosis
      t.text :recent_diagnosis_justification
      t.text :treatment_modality
      t.text :treatment_goals
      t.boolean :clinician_signature, null: false, default: false

      t.timestamps
    end
  end
end
