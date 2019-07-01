require 'rails_helper'

RSpec.describe "libraries/index", type: :view do
  before(:each) do
    assign(:libraries, [
      Library.create!(
        :document => "Document"
      ),
      Library.create!(
        :document => "Document"
      )
    ])
  end

  it "renders a list of libraries" do
    render
    assert_select "tr>td", :text => "Document".to_s, :count => 2
  end
end
