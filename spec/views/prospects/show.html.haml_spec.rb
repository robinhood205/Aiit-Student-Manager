require 'spec_helper'

describe "prospects/show" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :kbsnko => "Kbsnko",
      :kbsryo => "Kbsryo",
      :event => "Event",
      :infoyn => false,
      :syugan => "Syugan"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Kbsnko/)
    rendered.should match(/Kbsryo/)
    rendered.should match(/Event/)
    rendered.should match(/false/)
    rendered.should match(/Syugan/)
  end
end
