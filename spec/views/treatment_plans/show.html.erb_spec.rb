require 'rails_helper'

RSpec.describe "treatment_plans/show", type: :view do
  before(:each) do
    @treatment_plan = assign(:treatment_plan, TreatmentPlan.create!(
      :user => nil,
      :patient => nil,
      :diagnosis_description => "Diagnosis Description",
      :diagnostic_justification => "MyText",
      :presenting_problem => "MyText",
      :treatment_goal => "MyText",
      :goal_estimated_completion => "Goal Estimated Completion",
      :objective => "MyText",
      :treatment_strategy => "Treatment Strategy",
      :objective_estimated_completion => "Objective Estimated Completion",
      :treatment_frequency => "Treatment Frequency",
      :clinician_declaration => false,
      :clinician_signature => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Diagnosis Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Goal Estimated Completion/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Treatment Strategy/)
    expect(rendered).to match(/Objective Estimated Completion/)
    expect(rendered).to match(/Treatment Frequency/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
