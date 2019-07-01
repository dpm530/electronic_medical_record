require 'rails_helper'

RSpec.describe "patient_contact_informations/show", type: :view do
  before(:each) do
    @patient_contact_information = assign(:patient_contact_information, PatientContactInformation.create!(
      :email => "Email",
      :mobile_phone => "Mobile Phone",
      :home_phone => "Home Phone",
      :work_phone => "Work Phone",
      :other_phone => "Other Phone",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :zipcode => "Zipcode",
      :city => "City",
      :state => "State",
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile Phone/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Work Phone/)
    expect(rendered).to match(/Other Phone/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(//)
  end
end
