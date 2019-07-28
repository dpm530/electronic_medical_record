class Document < ApplicationRecord
   belongs_to :patient
   belongs_to :user

   mount_uploaders :file, DocumentUploader

end
