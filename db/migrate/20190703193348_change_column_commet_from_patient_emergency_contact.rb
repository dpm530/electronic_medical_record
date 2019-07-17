class ChangeColumnCommetFromPatientEmergencyContact < ActiveRecord::Migration[5.2]
  def change
     rename_column :patient_emergency_contacts, :commet, :comment
  end
end
