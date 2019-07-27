class Library < ApplicationRecord
   mount_uploaders :library_document, LibraryUploader
end
