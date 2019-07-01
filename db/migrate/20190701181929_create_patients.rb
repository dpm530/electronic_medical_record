class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.text :comment
      t.string :first_name
      t.string :last_name
      t.string :preferred_name
      t.date :dob
      t.string :birth_sex
      t.string :gender_identity
      t.string :sexual_orientation
      t.string :race
      t.string :languages
      t.string :marital_status
      t.string :employment
      t.boolean :hipaa, null: false, default: false
      t.string :pcp_release
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
