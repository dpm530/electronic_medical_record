class PatientEmergencyContact < ApplicationRecord
  belongs_to :patient

  validates :first_name, :last_name, :dob, presence: true
end
