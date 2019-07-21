class CreateIntakeNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :intake_notes do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :date
      t.time :time
      t.string :duration
      t.string :location
      t.string :participants
      t.text :presenting_problems
      t.string :general_appearance
      t.string :dress
      t.string :motor_activity
      t.string :insight
      t.string :judgement
      t.string :affect
      t.string :mood
      t.string :orientation
      t.string :memory
      t.string :attention_concentration
      t.string :thought_content
      t.string :perception
      t.string :flow_of_thought
      t.string :interview_behavior
      t.string :speech
      t.string :safety_issues
      t.text :identification
      t.text :history_present_problem
      t.text :past_psychiatric_history
      t.text :trauma_history
      t.text :family_psychiatric_history
      t.text :medical_history
      t.text :current_medications
      t.text :substance_use
      t.text :family_history
      t.text :social_history
      t.text :development_history
      t.text :educational_occupational_history
      t.text :legal_history
      t.text :strength_limitations
      t.text :other_information
      t.string :diagnosis_description
      t.text :diagnosis_justification
      t.boolean :clinician_signature, null: false, default: false

      t.timestamps
    end
  end
end
