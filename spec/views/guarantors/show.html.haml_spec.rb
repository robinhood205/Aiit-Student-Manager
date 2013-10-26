require 'spec_helper'

describe "guarantors/show" do
  before(:each) do
    @guarantor = assign(:guarantor, stub_model(Guarantor,
      :name => "Name",
      :guarantor_kana => "Guarantor Kana",
      :guarantor_zip => "Guarantor Zip",
      :guarantor_address => "Guarantor Address",
      :guarantor_tel => "Guarantor Tel",
      :relationship => "Relationship",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Guarantor Kana/)
    rendered.should match(/Guarantor Zip/)
    rendered.should match(/Guarantor Address/)
    rendered.should match(/Guarantor Tel/)
    rendered.should match(/Relationship/)
    rendered.should match(/MyText/)
  end
end
