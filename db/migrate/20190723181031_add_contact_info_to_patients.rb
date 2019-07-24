class AddContactInfoToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :email, :string
    add_column :patients, :mobile_phone, :string
    add_column :patients, :home_phone, :string
    add_column :patients, :work_phone, :string
    add_column :patients, :other_phoen, :string
    add_column :patients, :address_1, :string
    add_column :patients, :address_2, :string
    add_column :patients, :zipcode, :string
    add_column :patients, :city, :string
    add_column :patients, :state, :string
  end
end
