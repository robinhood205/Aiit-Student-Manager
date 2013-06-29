require 'spec_helper'

describe "guarantors/edit" do
  before(:each) do
    @guarantor = assign(:guarantor, stub_model(Guarantor,
      :name => "MyString",
      :namekata => "MyString",
      :zip => 1,
      :address => "MyString",
      :tel => 1,
      :relationship => "MyString"
    ))
  end

  it "renders the edit guarantor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guarantor_path(@guarantor), "post" do
      assert_select "input#guarantor_name[name=?]", "guarantor[name]"
      assert_select "input#guarantor_namekata[name=?]", "guarantor[namekata]"
      assert_select "input#guarantor_zip[name=?]", "guarantor[zip]"
      assert_select "input#guarantor_address[name=?]", "guarantor[address]"
      assert_select "input#guarantor_tel[name=?]", "guarantor[tel]"
      assert_select "input#guarantor_relationship[name=?]", "guarantor[relationship]"
    end
  end
end
