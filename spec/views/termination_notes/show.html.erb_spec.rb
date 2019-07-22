require 'rails_helper'

RSpec.describe "termination_notes/show", type: :view do
  before(:each) do
    @termination_note = assign(:termination_note, TerminationNote.create!(
      :user => nil,
      :patient => nil,
      :reason => "Reason",
      :main_complaint => "MyText",
      :most_recent_diagnosis => "Most Recent Diagnosis",
      :recent_diagnosis_justification => "MyText",
      :treatment_modality => "MyText",
      :treatment_goals => "MyText",
      :clinician_signature => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Reason/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Most Recent Diagnosis/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
