class RenameColumnDocumentFromLibraries < ActiveRecord::Migration[5.2]
  def change
     rename_column :libraries, :document, :library_document
  end
end
