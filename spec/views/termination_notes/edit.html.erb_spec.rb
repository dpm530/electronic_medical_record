require 'rails_helper'

RSpec.describe "termination_notes/edit", type: :view do
  before(:each) do
    @termination_note = assign(:termination_note, TerminationNote.create!(
      :user => nil,
      :patient => nil,
      :reason => "MyString",
      :main_complaint => "MyText",
      :most_recent_diagnosis => "MyString",
      :recent_diagnosis_justification => "MyText",
      :treatment_modality => "MyText",
      :treatment_goals => "MyText",
      :clinician_signature => false
    ))
  end

  it "renders the edit termination_note form" do
    render

    assert_select "form[action=?][method=?]", termination_note_path(@termination_note), "post" do

      assert_select "input[name=?]", "termination_note[user_id]"

      assert_select "input[name=?]", "termination_note[patient_id]"

      assert_select "input[name=?]", "termination_note[reason]"

      assert_select "textarea[name=?]", "termination_note[main_complaint]"

      assert_select "input[name=?]", "termination_note[most_recent_diagnosis]"

      assert_select "textarea[name=?]", "termination_note[recent_diagnosis_justification]"

      assert_select "textarea[name=?]", "termination_note[treatment_modality]"

      assert_select "textarea[name=?]", "termination_note[treatment_goals]"

      assert_select "input[name=?]", "termination_note[clinician_signature]"
    end
  end
end