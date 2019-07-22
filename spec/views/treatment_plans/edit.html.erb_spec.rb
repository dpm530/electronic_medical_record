require 'rails_helper'

RSpec.describe "treatment_plans/edit", type: :view do
  before(:each) do
    @treatment_plan = assign(:treatment_plan, TreatmentPlan.create!(
      :user => nil,
      :patient => nil,
      :diagnosis_description => "MyString",
      :diagnostic_justification => "MyText",
      :presenting_problem => "MyText",
      :treatment_goal => "MyText",
      :goal_estimated_completion => "MyString",
      :objective => "MyText",
      :treatment_strategy => "MyString",
      :objective_estimated_completion => "MyString",
      :treatment_frequency => "MyString",
      :clinician_declaration => false,
      :clinician_signature => false
    ))
  end

  it "renders the edit treatment_plan form" do
    render

    assert_select "form[action=?][method=?]", treatment_plan_path(@treatment_plan), "post" do

      assert_select "input[name=?]", "treatment_plan[user_id]"

      assert_select "input[name=?]", "treatment_plan[patient_id]"

      assert_select "input[name=?]", "treatment_plan[diagnosis_description]"

      assert_select "textarea[name=?]", "treatment_plan[diagnostic_justification]"

      assert_select "textarea[name=?]", "treatment_plan[presenting_problem]"

      assert_select "textarea[name=?]", "treatment_plan[treatment_goal]"

      assert_select "input[name=?]", "treatment_plan[goal_estimated_completion]"

      assert_select "textarea[name=?]", "treatment_plan[objective]"

      assert_select "input[name=?]", "treatment_plan[treatment_strategy]"

      assert_select "input[name=?]", "treatment_plan[objective_estimated_completion]"

      assert_select "input[name=?]", "treatment_plan[treatment_frequency]"

      assert_select "input[name=?]", "treatment_plan[clinician_declaration]"

      assert_select "input[name=?]", "treatment_plan[clinician_signature]"
    end
  end
end
