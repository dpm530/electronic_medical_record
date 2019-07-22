require 'rails_helper'

RSpec.describe "treatment_plans/index", type: :view do
  before(:each) do
    assign(:treatment_plans, [
      TreatmentPlan.create!(
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
      ),
      TreatmentPlan.create!(
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
      )
    ])
  end

  it "renders a list of treatment_plans" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Diagnosis Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Goal Estimated Completion".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Treatment Strategy".to_s, :count => 2
    assert_select "tr>td", :text => "Objective Estimated Completion".to_s, :count => 2
    assert_select "tr>td", :text => "Treatment Frequency".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
