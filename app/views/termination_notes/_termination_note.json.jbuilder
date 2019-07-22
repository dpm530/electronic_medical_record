json.extract! termination_note, :id, :user_id, :patient_id, :date, :time, :reason, :main_complaint, :most_recent_diagnosis, :recent_diagnosis_justification, :treatment_modality, :treatment_goals, :clinician_signature, :created_at, :updated_at
json.url termination_note_url(termination_note, format: :json)
