require 'rails_helper'

RSpec.describe "patient_contact_informations/index", type: :view do
  before(:each) do
    assign(:patient_contact_informations, [
      PatientContactInformation.create!(
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
      ),
      PatientContactInformation.create!(
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
      )
    ])
  end

  it "renders a list of patient_contact_informations" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Work Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Other Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
