class CreatePatientContactInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_contact_informations do |t|
      t.string :email
      t.string :mobile_phone
      t.string :home_phone
      t.string :work_phone
      t.string :other_phone
      t.string :address_1
      t.string :address_2
      t.string :zipcode
      t.string :city
      t.string :state
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
