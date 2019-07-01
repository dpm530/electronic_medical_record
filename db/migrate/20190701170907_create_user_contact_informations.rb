class CreateUserContactInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contact_informations do |t|
      t.string :address_1
      t.string :address_2
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :mobile_phone
      t.string :home_phone
      t.string :work_phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
