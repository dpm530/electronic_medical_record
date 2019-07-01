json.extract! patient_emergency_contact, :id, :first_name, :last_name, :contact_type, :relationship, :release_of_info, :dob, :address_1, :address_2, :country, :zipcode, :city, :state, :email, :mobile_phone, :work_phone, :home_phone, :other_phone, :commet, :patient_id, :created_at, :updated_at
json.url patient_emergency_contact_url(patient_emergency_contact, format: :json)
