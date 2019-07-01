require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :comment => "MyText",
      :first_name => "MyString",
      :last_name => "MyString",
      :preferred_name => "MyString",
      :birth_sex => "MyString",
      :gender_identity => "MyString",
      :sexual_orientation => "MyString",
      :race => "MyString",
      :languages => "MyString",
      :marital_status => "MyString",
      :employment => "MyString",
      :hipaa => false,
      :pcp_release => "MyString",
      :user => nil
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "textarea[name=?]", "patient[comment]"

      assert_select "input[name=?]", "patient[first_name]"

      assert_select "input[name=?]", "patient[last_name]"

      assert_select "input[name=?]", "patient[preferred_name]"

      assert_select "input[name=?]", "patient[birth_sex]"

      assert_select "input[name=?]", "patient[gender_identity]"

      assert_select "input[name=?]", "patient[sexual_orientation]"

      assert_select "input[name=?]", "patient[race]"

      assert_select "input[name=?]", "patient[languages]"

      assert_select "input[name=?]", "patient[marital_status]"

      assert_select "input[name=?]", "patient[employment]"

      assert_select "input[name=?]", "patient[hipaa]"

      assert_select "input[name=?]", "patient[pcp_release]"

      assert_select "input[name=?]", "patient[user_id]"
    end
  end
end
