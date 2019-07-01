require 'rails_helper'

RSpec.describe "patient_contact_informations/new", type: :view do
  before(:each) do
    assign(:patient_contact_information, PatientContactInformation.new(
      :email => "MyString",
      :mobile_phone => "MyString",
      :home_phone => "MyString",
      :work_phone => "MyString",
      :other_phone => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :zipcode => "MyString",
      :city => "MyString",
      :state => "MyString",
      :patient => nil
    ))
  end

  it "renders new patient_contact_information form" do
    render

    assert_select "form[action=?][method=?]", patient_contact_informations_path, "post" do

      assert_select "input[name=?]", "patient_contact_information[email]"

      assert_select "input[name=?]", "patient_contact_information[mobile_phone]"

      assert_select "input[name=?]", "patient_contact_information[home_phone]"

      assert_select "input[name=?]", "patient_contact_information[work_phone]"

      assert_select "input[name=?]", "patient_contact_information[other_phone]"

      assert_select "input[name=?]", "patient_contact_information[address_1]"

      assert_select "input[name=?]", "patient_contact_information[address_2]"

      assert_select "input[name=?]", "patient_contact_information[zipcode]"

      assert_select "input[name=?]", "patient_contact_information[city]"

      assert_select "input[name=?]", "patient_contact_information[state]"

      assert_select "input[name=?]", "patient_contact_information[patient_id]"
    end
  end
end
