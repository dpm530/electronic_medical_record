require 'rails_helper'

RSpec.describe "patient_emergency_contacts/show", type: :view do
  before(:each) do
    @patient_emergency_contact = assign(:patient_emergency_contact, PatientEmergencyContact.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :contact_type => "Contact Type",
      :relationship => "Relationship",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :country => "Country",
      :zipcode => "Zipcode",
      :city => "City",
      :state => "State",
      :email => "Email",
      :mobile_phone => "Mobile Phone",
      :work_phone => "Work Phone",
      :home_phone => "Home Phone",
      :other_phone => "Other Phone",
      :commet => "MyText",
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Contact Type/)
    expect(rendered).to match(/Relationship/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile Phone/)
    expect(rendered).to match(/Work Phone/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Other Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
