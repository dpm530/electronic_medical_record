json.extract! user_contact_information, :id, :address_1, :address_2, :zipcode, :city, :state, :mobile_phone, :home_phone, :work_phone, :user_id, :created_at, :updated_at
json.url user_contact_information_url(user_contact_information, format: :json)
