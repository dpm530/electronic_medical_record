class Patient < ApplicationRecord
   belongs_to :user
   has_many :patient_emergency_contacts, dependent: :destroy
   has_many :progress_notes, dependent: :destroy
   has_many :intake_notes, dependent: :destroy
   has_many :treatment_plans, dependent: :destroy
   has_many :termination_notes, dependent: :destroy
   has_many :documents, dependent: :destroy

   validates :first_name, :last_name, :dob, presence: true

end
