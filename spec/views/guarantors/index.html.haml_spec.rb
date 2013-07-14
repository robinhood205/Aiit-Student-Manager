require 'spec_helper'

describe "guarantors/index" do
  before(:each) do
    assign(:guarantors, [
      stub_model(Guarantor,
        :name => "Name",
        :guarantor_kana => "Guarantor Kana",
        :guarantor_zip => "Guarantor Zip",
        :guarantor_address => "Guarantor Address",
        :guarantor_tel => "Guarantor Tel",
        :relationship => "Relationship",
        :memo => "MyText"
      ),
      stub_model(Guarantor,
        :name => "Name",
        :guarantor_kana => "Guarantor Kana",
        :guarantor_zip => "Guarantor Zip",
        :guarantor_address => "Guarantor Address",
        :guarantor_tel => "Guarantor Tel",
        :relationship => "Relationship",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of guarantors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Guarantor Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Guarantor Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Guarantor Address".to_s, :count => 2
    assert_select "tr>td", :text => "Guarantor Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Relationship".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
