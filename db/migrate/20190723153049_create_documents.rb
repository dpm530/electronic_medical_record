class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.references :patient, foreign_key: true
      t.string :file

      t.timestamps
    end
  end
end
