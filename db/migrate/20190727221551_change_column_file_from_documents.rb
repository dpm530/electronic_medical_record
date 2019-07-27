class ChangeColumnFileFromDocuments < ActiveRecord::Migration[5.2]
  def change
     change_column :documents, :file, :json, using: 'file::json'
  end
end
