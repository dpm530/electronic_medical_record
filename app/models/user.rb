class User < ApplicationRecord

   has_many :patients
   has_one :user_contact_information

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
