require 'rails_helper'

RSpec.describe "progress_notes/show", type: :view do
  before(:each) do
    @progress_note = assign(:progress_note, ProgressNote.create!(
      :user => nil,
      :patient => nil,
      :duration => "Duration",
      :location => "Location",
      :participants => "Participants",
      :diagnosis_description => "MyText",
      :diagnostic_justification => "MyText",
      :cognitive_functioning => "Cognitive Functioning",
      :affect => "Affect",
      :mood => "Mood",
      :interpersonal => "Interpersonal",
      :functional_status => "Functional Status",
      :safety_issues => "Safety Issues",
      :medications => "Medications",
      :symptoms_description => "MyText",
      :relevant_content => "MyText",
      :interventions_used => "Interventions Used",
      :additional_notes => "MyText",
      :plan => "MyText",
      :recommendation => "Recommendation",
      :treatment_frequency => "Treatment Frequency",
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
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cognitive Functioning/)
    expect(rendered).to match(/Affect/)
    expect(rendered).to match(/Mood/)
    expect(rendered).to match(/Interpersonal/)
    expect(rendered).to match(/Functional Status/)
    expect(rendered).to match(/Safety Issues/)
    expect(rendered).to match(/Medications/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Interventions Used/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Recommendation/)
    expect(rendered).to match(/Treatment Frequency/)
    expect(rendered).to match(/false/)
  end
end
