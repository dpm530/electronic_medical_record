json.extract! progress_note, :id, :user_id, :patient_id, :date, :time, :duration, :location, :participants, :diagnosis_description, :diagnostic_justification, :cognitive_functioning, :affect, :mood, :interpersonal, :functional_status, :safety_issues, :medications, :symptoms_description, :relevant_content, :interventions_used, :additional_notes, :plan, :recommendation, :treatment_frequency, :clinician_signature, :created_at, :updated_at
json.url progress_note_url(progress_note, format: :json)