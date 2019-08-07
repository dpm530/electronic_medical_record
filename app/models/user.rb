class User < ApplicationRecord

   has_one :user_contact_information
   has_many :patients
   has_many :progress_notes
   has_many :intake_notes
   has_many :treatment_plans
   has_many :termination_notes
   has_many :documents

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   def full_name
      return (self.first_name+" "+self.last_name)
   end


end
