require 'rails_helper'

RSpec.describe "user_contact_informations/edit", type: :view do
  before(:each) do
    @user_contact_information = assign(:user_contact_information, UserContactInformation.create!(
      :address_1 => "MyString",
      :address_2 => "MyString",
      :zipcode => "MyString",
      :city => "MyString",
      :state => "MyString",
      :mobile_phone => "MyString",
      :home_phone => "MyString",
      :work_phone => "MyString",
      :user => nil
    ))
  end

  it "renders the edit user_contact_information form" do
    render

    assert_select "form[action=?][method=?]", user_contact_information_path(@user_contact_information), "post" do

      assert_select "input[name=?]", "user_contact_information[address_1]"

      assert_select "input[name=?]", "user_contact_information[address_2]"

      assert_select "input[name=?]", "user_contact_information[zipcode]"

      assert_select "input[name=?]", "user_contact_information[city]"

      assert_select "input[name=?]", "user_contact_information[state]"

      assert_select "input[name=?]", "user_contact_information[mobile_phone]"

      assert_select "input[name=?]", "user_contact_information[home_phone]"

      assert_select "input[name=?]", "user_contact_information[work_phone]"

      assert_select "input[name=?]", "user_contact_information[user_id]"
    end
  end
end
