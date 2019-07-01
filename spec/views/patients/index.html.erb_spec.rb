require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :comment => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name",
        :preferred_name => "Preferred Name",
        :birth_sex => "Birth Sex",
        :gender_identity => "Gender Identity",
        :sexual_orientation => "Sexual Orientation",
        :race => "Race",
        :languages => "Languages",
        :marital_status => "Marital Status",
        :employment => "Employment",
        :hipaa => false,
        :pcp_release => "Pcp Release",
        :user => nil
      ),
      Patient.create!(
        :comment => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name",
        :preferred_name => "Preferred Name",
        :birth_sex => "Birth Sex",
        :gender_identity => "Gender Identity",
        :sexual_orientation => "Sexual Orientation",
        :race => "Race",
        :languages => "Languages",
        :marital_status => "Marital Status",
        :employment => "Employment",
        :hipaa => false,
        :pcp_release => "Pcp Release",
        :user => nil
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Preferred Name".to_s, :count => 2
    assert_select "tr>td", :text => "Birth Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Gender Identity".to_s, :count => 2
    assert_select "tr>td", :text => "Sexual Orientation".to_s, :count => 2
    assert_select "tr>td", :text => "Race".to_s, :count => 2
    assert_select "tr>td", :text => "Languages".to_s, :count => 2
    assert_select "tr>td", :text => "Marital Status".to_s, :count => 2
    assert_select "tr>td", :text => "Employment".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Pcp Release".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
