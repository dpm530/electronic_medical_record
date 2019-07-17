require 'rails_helper'

RSpec.describe "progress_notes/index", type: :view do
  before(:each) do
    assign(:progress_notes, [
      ProgressNote.create!(
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
      ),
      ProgressNote.create!(
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
      )
    ])
  end

  it "renders a list of progress_notes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Participants".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cognitive Functioning".to_s, :count => 2
    assert_select "tr>td", :text => "Affect".to_s, :count => 2
    assert_select "tr>td", :text => "Mood".to_s, :count => 2
    assert_select "tr>td", :text => "Interpersonal".to_s, :count => 2
    assert_select "tr>td", :text => "Functional Status".to_s, :count => 2
    assert_select "tr>td", :text => "Safety Issues".to_s, :count => 2
    assert_select "tr>td", :text => "Medications".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Interventions Used".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Recommendation".to_s, :count => 2
    assert_select "tr>td", :text => "Treatment Frequency".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
