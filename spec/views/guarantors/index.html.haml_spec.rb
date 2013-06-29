require 'spec_helper'

describe "guarantors/index" do
  before(:each) do
    assign(:guarantors, [
      stub_model(Guarantor,
        :name => "Name",
        :namekata => "Namekata",
        :zip => 1,
        :address => "Address",
        :tel => 2,
        :relationship => "Relationship"
      ),
      stub_model(Guarantor,
        :name => "Name",
        :namekata => "Namekata",
        :zip => 1,
        :address => "Address",
        :tel => 2,
        :relationship => "Relationship"
      )
    ])
  end

  it "renders a list of guarantors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Namekata".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Relationship".to_s, :count => 2
  end
end
