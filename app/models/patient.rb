class Patient < ApplicationRecord
  belongs_to :user
  has_many :patient_contact_informations
  has_many :patient_emergency_contacts
  has_many :progress_notes
  has_many :intake_notes

end
