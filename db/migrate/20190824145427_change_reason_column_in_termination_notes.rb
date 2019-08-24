class ChangeReasonColumnInTerminationNotes < ActiveRecord::Migration[5.2]
  def change
     change_column :termination_notes, :reason, :text
  end
end
