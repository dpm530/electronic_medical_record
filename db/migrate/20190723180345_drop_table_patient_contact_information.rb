class DropTablePatientContactInformation < ActiveRecord::Migration[5.2]
  def change
     drop_table :patient_contact_informations
  end
end
