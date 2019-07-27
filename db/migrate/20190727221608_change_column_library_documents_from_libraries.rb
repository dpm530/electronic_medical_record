class ChangeColumnLibraryDocumentsFromLibraries < ActiveRecord::Migration[5.2]
  def change
     change_column :libraries, :library_document, :json, using: 'library_document::json'
  end
end
