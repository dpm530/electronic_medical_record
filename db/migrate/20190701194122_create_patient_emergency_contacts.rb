class CreatePatientEmergencyContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_emergency_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_type
      t.string :relationship
      t.date :release_of_info
      t.date :dob
      t.string :address_1
      t.string :address_2
      t.string :country
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :email
      t.string :mobile_phone
      t.string :work_phone
      t.string :home_phone
      t.string :other_phone
      t.text :commet
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
