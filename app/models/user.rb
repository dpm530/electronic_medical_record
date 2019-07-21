class User < ApplicationRecord

   has_one :user_contact_information
   has_many :patients
   has_many :progress_notes
   has_many :intake_notes

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
