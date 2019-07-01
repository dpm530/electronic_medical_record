require 'rails_helper'

RSpec.describe "libraries/edit", type: :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      :document => "MyString"
    ))
  end

  it "renders the edit library form" do
    render

    assert_select "form[action=?][method=?]", library_path(@library), "post" do

      assert_select "input[name=?]", "library[document]"
    end
  end
end
