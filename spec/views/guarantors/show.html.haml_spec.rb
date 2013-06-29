require 'spec_helper'

describe "guarantors/show" do
  before(:each) do
    @guarantor = assign(:guarantor, stub_model(Guarantor,
      :name => "Name",
      :namekata => "Namekata",
      :zip => 1,
      :address => "Address",
      :tel => 2,
      :relationship => "Relationship"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Namekata/)
    rendered.should match(/1/)
    rendered.should match(/Address/)
    rendered.should match(/2/)
    rendered.should match(/Relationship/)
  end
end
