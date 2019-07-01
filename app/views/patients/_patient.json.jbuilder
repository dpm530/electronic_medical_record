json.extract! patient, :id, :comment, :first_name, :last_name, :preferred_name, :dob, :birth_sex, :gender_identity, :sexual_orientation, :race, :languages, :marital_status, :employment, :hipaa, :pcp_release, :user_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
