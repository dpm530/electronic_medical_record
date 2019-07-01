require 'rails_helper'

RSpec.describe "patient_emergency_contacts/index", type: :view do
  before(:each) do
    assign(:patient_emergency_contacts, [
      PatientEmergencyContact.create!(
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
      ),
      PatientEmergencyContact.create!(
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
      )
    ])
  end

  it "renders a list of patient_emergency_contacts" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Type".to_s, :count => 2
    assert_select "tr>td", :text => "Relationship".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Work Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Other Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
