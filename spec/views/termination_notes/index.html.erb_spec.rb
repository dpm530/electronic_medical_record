require 'rails_helper'

RSpec.describe "termination_notes/index", type: :view do
  before(:each) do
    assign(:termination_notes, [
      TerminationNote.create!(
        :user => nil,
        :patient => nil,
        :reason => "Reason",
        :main_complaint => "MyText",
        :most_recent_diagnosis => "Most Recent Diagnosis",
        :recent_diagnosis_justification => "MyText",
        :treatment_modality => "MyText",
        :treatment_goals => "MyText",
        :clinician_signature => false
      ),
      TerminationNote.create!(
        :user => nil,
        :patient => nil,
        :reason => "Reason",
        :main_complaint => "MyText",
        :most_recent_diagnosis => "Most Recent Diagnosis",
        :recent_diagnosis_justification => "MyText",
        :treatment_modality => "MyText",
        :treatment_goals => "MyText",
        :clinician_signature => false
      )
    ])
  end

  it "renders a list of termination_notes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Most Recent Diagnosis".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
