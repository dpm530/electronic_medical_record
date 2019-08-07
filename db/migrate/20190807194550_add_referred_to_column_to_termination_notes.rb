class AddReferredToColumnToTerminationNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :termination_notes, :referred_to, :string
  end
end
