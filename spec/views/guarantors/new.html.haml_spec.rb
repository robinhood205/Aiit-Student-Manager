require 'spec_helper'

describe "guarantors/new" do
  before(:each) do
    assign(:guarantor, stub_model(Guarantor,
      :name => "MyString",
      :namekata => "MyString",
      :zip => 1,
      :address => "MyString",
      :tel => 1,
      :relationship => "MyString"
    ).as_new_record)
  end

  it "renders new guarantor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guarantors_path, "post" do
      assert_select "input#guarantor_name[name=?]", "guarantor[name]"
      assert_select "input#guarantor_namekata[name=?]", "guarantor[namekata]"
      assert_select "input#guarantor_zip[name=?]", "guarantor[zip]"
      assert_select "input#guarantor_address[name=?]", "guarantor[address]"
      assert_select "input#guarantor_tel[name=?]", "guarantor[tel]"
      assert_select "input#guarantor_relationship[name=?]", "guarantor[relationship]"
    end
  end
end
