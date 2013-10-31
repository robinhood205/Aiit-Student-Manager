# coding: utf-8
require 'spec_helper'

describe "prospects/index" do
  before(:each) do
    assign(:prospects, [
      stub_model(Prospect,
        :aiit_member_id => 1,
        :wished_program => "創造技術専攻",
        :wished_material => "Wished Material",
        :event => "Event",
        :contact_unnecessary => false,
        :applikation => "Applikation",
        :memo => "MyText"
      ),
      stub_model(Prospect,
        :aiit_member_id => 1,
        :wished_program => "創造技術専攻",
        :wished_material => "Wished Material",
        :event => "Event",
        :contact_unnecessary => false,
        :applikation => "Applikation",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of prospects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "創造技術専攻".to_s, :count => 2
    assert_select "tr>td", :text => "Wished Material".to_s, :count => 2
    assert_select "tr>td", :text => "Event".to_s, :count => 2
    assert_select "tr>td", :text => "No".to_s, :count => 2
    assert_select "tr>td", :text => "Applikation".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
