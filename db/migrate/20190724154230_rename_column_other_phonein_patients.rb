class RenameColumnOtherPhoneinPatients < ActiveRecord::Migration[5.2]
  def change
     rename_column :patients, :other_phoen, :other_phone
  end
end
