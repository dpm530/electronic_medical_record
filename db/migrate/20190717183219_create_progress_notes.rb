class CreateProgressNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :progress_notes do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :date
      t.time :time
      t.string :duration
      t.string :location
      t.string :participants
      t.text :diagnosis_description
      t.text :diagnostic_justification
      t.string :cognitive_functioning
      t.string :affect
      t.string :mood
      t.string :interpersonal
      t.string :functional_status
      t.string :safety_issues
      t.string :medications
      t.text :symptoms_description
      t.text :relevant_content
      t.string :interventions_used
      t.text :additional_notes
      t.text :plan
      t.string :recommendation
      t.string :treatment_frequency
      t.boolean :clinician_signature, null: false, default: false

      t.timestamps
    end
  end
end
