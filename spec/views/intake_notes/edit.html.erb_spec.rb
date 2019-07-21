require 'rails_helper'

RSpec.describe "intake_notes/edit", type: :view do
  before(:each) do
    @intake_note = assign(:intake_note, IntakeNote.create!(
      :user => nil,
      :patient => nil,
      :duration => "MyString",
      :location => "MyString",
      :participants => "MyString",
      :presenting_problems => "MyText",
      :general_appearance => "MyString",
      :dress => "MyString",
      :motor_activity => "MyString",
      :insight => "MyString",
      :judgement => "MyString",
      :affect => "MyString",
      :mood => "MyString",
      :orientation => "MyString",
      :memory => "MyString",
      :attention_concentration => "MyString",
      :thought_content => "MyString",
      :perception => "MyString",
      :flow_of_thought => "MyString",
      :interview_behavior => "MyString",
      :speech => "MyString",
      :safety_issues => "MyString",
      :identification => "MyText",
      :history_present_problem => "MyText",
      :past_psychiatric_history => "MyText",
      :trauma_history => "MyText",
      :family_psychiatric_history => "MyText",
      :medical_history => "MyText",
      :current_medications => "MyText",
      :substance_use => "MyText",
      :family_history => "MyText",
      :social_history => "MyText",
      :development_history => "MyText",
      :educational_occupational_history => "MyText",
      :legal_history => "MyText",
      :strength_limitations => "MyText",
      :other_information => "MyText",
      :diagnosis_description => "MyString",
      :diagnosis_justification => "MyText",
      :clinician_signature => false
    ))
  end

  it "renders the edit intake_note form" do
    render

    assert_select "form[action=?][method=?]", intake_note_path(@intake_note), "post" do

      assert_select "input[name=?]", "intake_note[user_id]"

      assert_select "input[name=?]", "intake_note[patient_id]"

      assert_select "input[name=?]", "intake_note[duration]"

      assert_select "input[name=?]", "intake_note[location]"

      assert_select "input[name=?]", "intake_note[participants]"

      assert_select "textarea[name=?]", "intake_note[presenting_problems]"

      assert_select "input[name=?]", "intake_note[general_appearance]"

      assert_select "input[name=?]", "intake_note[dress]"

      assert_select "input[name=?]", "intake_note[motor_activity]"

      assert_select "input[name=?]", "intake_note[insight]"

      assert_select "input[name=?]", "intake_note[judgement]"

      assert_select "input[name=?]", "intake_note[affect]"

      assert_select "input[name=?]", "intake_note[mood]"

      assert_select "input[name=?]", "intake_note[orientation]"

      assert_select "input[name=?]", "intake_note[memory]"

      assert_select "input[name=?]", "intake_note[attention_concentration]"

      assert_select "input[name=?]", "intake_note[thought_content]"

      assert_select "input[name=?]", "intake_note[perception]"

      assert_select "input[name=?]", "intake_note[flow_of_thought]"

      assert_select "input[name=?]", "intake_note[interview_behavior]"

      assert_select "input[name=?]", "intake_note[speech]"

      assert_select "input[name=?]", "intake_note[safety_issues]"

      assert_select "textarea[name=?]", "intake_note[identification]"

      assert_select "textarea[name=?]", "intake_note[history_present_problem]"

      assert_select "textarea[name=?]", "intake_note[past_psychiatric_history]"

      assert_select "textarea[name=?]", "intake_note[trauma_history]"

      assert_select "textarea[name=?]", "intake_note[family_psychiatric_history]"

      assert_select "textarea[name=?]", "intake_note[medical_history]"

      assert_select "textarea[name=?]", "intake_note[current_medications]"

      assert_select "textarea[name=?]", "intake_note[substance_use]"

      assert_select "textarea[name=?]", "intake_note[family_history]"

      assert_select "textarea[name=?]", "intake_note[social_history]"

      assert_select "textarea[name=?]", "intake_note[development_history]"

      assert_select "textarea[name=?]", "intake_note[educational_occupational_history]"

      assert_select "textarea[name=?]", "intake_note[legal_history]"

      assert_select "textarea[name=?]", "intake_note[strength_limitations]"

      assert_select "textarea[name=?]", "intake_note[other_information]"

      assert_select "input[name=?]", "intake_note[diagnosis_description]"

      assert_select "textarea[name=?]", "intake_note[diagnosis_justification]"

      assert_select "input[name=?]", "intake_note[clinician_signature]"
    end
  end
end
