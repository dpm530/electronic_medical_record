require 'rails_helper'

RSpec.describe "documents/edit", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :patient => nil,
      :file => "MyString"
    ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do

      assert_select "input[name=?]", "document[patient_id]"

      assert_select "input[name=?]", "document[file]"
    end
  end
end
