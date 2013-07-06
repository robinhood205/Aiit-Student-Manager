require 'spec_helper'

describe "prospects/show" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :wished_program => "Wished Program",
      :wished_material => "Wished Material",
      :event => "Event",
      :contact_unnecessary => false,
      :applikation => "Applikation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Wished Program/)
    rendered.should match(/Wished Material/)
    rendered.should match(/Event/)
    rendered.should match(/false/)
    rendered.should match(/Applikation/)
  end
end
