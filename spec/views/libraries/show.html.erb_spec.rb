require 'rails_helper'

RSpec.describe "libraries/show", type: :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      :document => "Document"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Document/)
  end
end
