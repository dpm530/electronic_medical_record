require 'rails_helper'

RSpec.describe "intake_notes/show", type: :view do
  before(:each) do
    @intake_note = assign(:intake_note, IntakeNote.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Participants/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/General Appearance/)
    expect(rendered).to match(/Dress/)
    expect(rendered).to match(/Motor Activity/)
    expect(rendered).to match(/Insight/)
    expect(rendered).to match(/Judgement/)
    expect(rendered).to match(/Affect/)
    expect(rendered).to match(/Mood/)
    expect(rendered).to match(/Orientation/)
    expect(rendered).to match(/Memory/)
    expect(rendered).to match(/Attention Concentration/)
    expect(rendered).to match(/Thought Content/)
    expect(rendered).to match(/Perception/)
    expect(rendered).to match(/Flow Of Thought/)
    expect(rendered).to match(/Interview Behavior/)
    expect(rendered).to match(/Speech/)
    expect(rendered).to match(/Safety Issues/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Diagnosis Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
