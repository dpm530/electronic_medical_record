require 'rails_helper'

RSpec.describe "treatment_plans/new", type: :view do
  before(:each) do
    assign(:treatment_plan, TreatmentPlan.new(
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

  it "renders new treatment_plan form" do
    render

    assert_select "form[action=?][method=?]", treatment_plans_path, "post" do

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
