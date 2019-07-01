require 'rails_helper'

RSpec.describe "patient_emergency_contacts/edit", type: :view do
  before(:each) do
    @patient_emergency_contact = assign(:patient_emergency_contact, PatientEmergencyContact.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :contact_type => "MyString",
      :relationship => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :country => "MyString",
      :zipcode => "MyString",
      :city => "MyString",
      :state => "MyString",
      :email => "MyString",
      :mobile_phone => "MyString",
      :work_phone => "MyString",
      :home_phone => "MyString",
      :other_phone => "MyString",
      :commet => "MyText",
      :patient => nil
    ))
  end

  it "renders the edit patient_emergency_contact form" do
    render

    assert_select "form[action=?][method=?]", patient_emergency_contact_path(@patient_emergency_contact), "post" do

      assert_select "input[name=?]", "patient_emergency_contact[first_name]"

      assert_select "input[name=?]", "patient_emergency_contact[last_name]"

      assert_select "input[name=?]", "patient_emergency_contact[contact_type]"

      assert_select "input[name=?]", "patient_emergency_contact[relationship]"

      assert_select "input[name=?]", "patient_emergency_contact[address_1]"

      assert_select "input[name=?]", "patient_emergency_contact[address_2]"

      assert_select "input[name=?]", "patient_emergency_contact[country]"

      assert_select "input[name=?]", "patient_emergency_contact[zipcode]"

      assert_select "input[name=?]", "patient_emergency_contact[city]"

      assert_select "input[name=?]", "patient_emergency_contact[state]"

      assert_select "input[name=?]", "patient_emergency_contact[email]"

      assert_select "input[name=?]", "patient_emergency_contact[mobile_phone]"

      assert_select "input[name=?]", "patient_emergency_contact[work_phone]"

      assert_select "input[name=?]", "patient_emergency_contact[home_phone]"

      assert_select "input[name=?]", "patient_emergency_contact[other_phone]"

      assert_select "textarea[name=?]", "patient_emergency_contact[commet]"

      assert_select "input[name=?]", "patient_emergency_contact[patient_id]"
    end
  end
end
