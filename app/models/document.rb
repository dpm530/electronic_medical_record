class Document < ApplicationRecord
   belongs_to :patient
   mount_uploaders :file, FileUploader
end
