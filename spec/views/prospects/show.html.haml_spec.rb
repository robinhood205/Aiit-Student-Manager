# coding: utf-8
require 'spec_helper'

describe "prospects/show" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :aiit_member_id => 1,
      :wished_program => "創造技術専攻",
      :wished_material => "Wished Material",
      :event => "Event",
      :contact_unnecessary => false,
      :applikation => "Applikation",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/創造技術専攻/)
    rendered.should match(/Wished Material/)
    rendered.should match(/Event/)
    rendered.should match(/false/)
    rendered.should match(/Applikation/)
    rendered.should match(/MyText/)
  end
end
