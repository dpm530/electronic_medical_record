class CreateTreatmentPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :treatment_plans do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :date
      t.time :time
      t.string :diagnosis_description
      t.text :diagnostic_justification
      t.text :presenting_problem
      t.text :treatment_goal
      t.string :goal_estimated_completion
      t.text :objective
      t.string :treatment_strategy
      t.string :objective_estimated_completion
      t.string :treatment_frequency
      t.boolean :clinician_declaration, null: false, default: false
      t.boolean :clinician_signature, null: false, default: false

      t.timestamps
    end
  end
end
