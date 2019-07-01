json.extract! patient_contact_information, :id, :email, :mobile_phone, :home_phone, :work_phone, :other_phone, :address_1, :address_2, :zipcode, :city, :state, :patient_id, :created_at, :updated_at
json.url patient_contact_information_url(patient_contact_information, format: :json)
