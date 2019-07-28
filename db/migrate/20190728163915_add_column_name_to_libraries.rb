class AddColumnNameToLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :libraries, :name, :string
  end
end
