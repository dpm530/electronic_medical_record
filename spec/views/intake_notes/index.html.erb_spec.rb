require 'rails_helper'

RSpec.describe "intake_notes/index", type: :view do
  before(:each) do
    assign(:intake_notes, [
      IntakeNote.create!(
        :user => nil,
        :patient => nil,
        :duration => "Duration",
        :location => "Location",
        :participants => "Participants",
        :presenting_problems => "MyText",
        :general_appearance => "General Appearance",
        :dress => "Dress",
        :motor_activity => "Motor Activity",
        :insight => "Insight",
        :judgement => "Judgement",
        :affect => "Affect",
        :mood => "Mood",
        :orientation => "Orientation",
        :memory => "Memory",
        :attention_concentration => "Attention Concentration",
        :thought_content => "Thought Content",
        :perception => "Perception",
        :flow_of_thought => "Flow Of Thought",
        :interview_behavior => "Interview Behavior",
        :speech => "Speech",
        :safety_issues => "Safety Issues",
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
        :diagnosis_description => "Diagnosis Description",
        :diagnosis_justification => "MyText",
        :clinician_signature => false
      ),
      IntakeNote.create!(
        :user => nil,
        :patient => nil,
        :duration => "Duration",
        :location => "Location",
        :participants => "Participants",
        :presenting_problems => "MyText",
        :general_appearance => "General Appearance",
        :dress => "Dress",
        :motor_activity => "Motor Activity",
        :insight => "Insight",
        :judgement => "Judgement",
        :affect => "Affect",
        :mood => "Mood",
        :orientation => "Orientation",
        :memory => "Memory",
        :attention_concentration => "Attention Concentration",
        :thought_content => "Thought Content",
        :perception => "Perception",
        :flow_of_thought => "Flow Of Thought",
        :interview_behavior => "Interview Behavior",
        :speech => "Speech",
        :safety_issues => "Safety Issues",
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
        :diagnosis_description => "Diagnosis Description",
        :diagnosis_justification => "MyText",
        :clinician_signature => false
      )
    ])
  end

  it "renders a list of intake_notes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Participants".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "General Appearance".to_s, :count => 2
    assert_select "tr>td", :text => "Dress".to_s, :count => 2
    assert_select "tr>td", :text => "Motor Activity".to_s, :count => 2
    assert_select "tr>td", :text => "Insight".to_s, :count => 2
    assert_select "tr>td", :text => "Judgement".to_s, :count => 2
    assert_select "tr>td", :text => "Affect".to_s, :count => 2
    assert_select "tr>td", :text => "Mood".to_s, :count => 2
    assert_select "tr>td", :text => "Orientation".to_s, :count => 2
    assert_select "tr>td", :text => "Memory".to_s, :count => 2
    assert_select "tr>td", :text => "Attention Concentration".to_s, :count => 2
    assert_select "tr>td", :text => "Thought Content".to_s, :count => 2
    assert_select "tr>td", :text => "Perception".to_s, :count => 2
    assert_select "tr>td", :text => "Flow Of Thought".to_s, :count => 2
    assert_select "tr>td", :text => "Interview Behavior".to_s, :count => 2
    assert_select "tr>td", :text => "Speech".to_s, :count => 2
    assert_select "tr>td", :text => "Safety Issues".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Diagnosis Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
