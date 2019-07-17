require 'rails_helper'

RSpec.describe "progress_notes/edit", type: :view do
  before(:each) do
    @progress_note = assign(:progress_note, ProgressNote.create!(
      :user => nil,
      :patient => nil,
      :duration => "MyString",
      :location => "MyString",
      :participants => "MyString",
      :diagnosis_description => "MyText",
      :diagnostic_justification => "MyText",
      :cognitive_functioning => "MyString",
      :affect => "MyString",
      :mood => "MyString",
      :interpersonal => "MyString",
      :functional_status => "MyString",
      :safety_issues => "MyString",
      :medications => "MyString",
      :symptoms_description => "MyText",
      :relevant_content => "MyText",
      :interventions_used => "MyString",
      :additional_notes => "MyText",
      :plan => "MyText",
      :recommendation => "MyString",
      :treatment_frequency => "MyString",
      :clinician_signature => false
    ))
  end

  it "renders the edit progress_note form" do
    render

    assert_select "form[action=?][method=?]", progress_note_path(@progress_note), "post" do

      assert_select "input[name=?]", "progress_note[user_id]"

      assert_select "input[name=?]", "progress_note[patient_id]"

      assert_select "input[name=?]", "progress_note[duration]"

      assert_select "input[name=?]", "progress_note[location]"

      assert_select "input[name=?]", "progress_note[participants]"

      assert_select "textarea[name=?]", "progress_note[diagnosis_description]"

      assert_select "textarea[name=?]", "progress_note[diagnostic_justification]"

      assert_select "input[name=?]", "progress_note[cognitive_functioning]"

      assert_select "input[name=?]", "progress_note[affect]"

      assert_select "input[name=?]", "progress_note[mood]"

      assert_select "input[name=?]", "progress_note[interpersonal]"

      assert_select "input[name=?]", "progress_note[functional_status]"

      assert_select "input[name=?]", "progress_note[safety_issues]"

      assert_select "input[name=?]", "progress_note[medications]"

      assert_select "textarea[name=?]", "progress_note[symptoms_description]"

      assert_select "textarea[name=?]", "progress_note[relevant_content]"

      assert_select "input[name=?]", "progress_note[interventions_used]"

      assert_select "textarea[name=?]", "progress_note[additional_notes]"

      assert_select "textarea[name=?]", "progress_note[plan]"

      assert_select "input[name=?]", "progress_note[recommendation]"

      assert_select "input[name=?]", "progress_note[treatment_frequency]"

      assert_select "input[name=?]", "progress_note[clinician_signature]"
    end
  end
end
