require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Preferred Name/)
    expect(rendered).to match(/Birth Sex/)
    expect(rendered).to match(/Gender Identity/)
    expect(rendered).to match(/Sexual Orientation/)
    expect(rendered).to match(/Race/)
    expect(rendered).to match(/Languages/)
    expect(rendered).to match(/Marital Status/)
    expect(rendered).to match(/Employment/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Pcp Release/)
    expect(rendered).to match(//)
  end
end
