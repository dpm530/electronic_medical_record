require 'rails_helper'

RSpec.describe "documents/show", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :patient => nil,
      :file => "File"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/File/)
  end
end
