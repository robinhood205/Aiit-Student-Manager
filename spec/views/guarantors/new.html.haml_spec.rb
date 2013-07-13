require 'spec_helper'

describe "guarantors/new" do
  before(:each) do
    assign(:guarantor, stub_model(Guarantor,
      :name => "MyString",
      :guarantor_kana => "MyString",
      :guarantor_zip => "MyString",
      :guarantor_address => "MyString",
      :guarantor_tel => "MyString",
      :relationship => "MyString",
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new guarantor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guarantors_path, "post" do
      assert_select "input#guarantor_name[name=?]", "guarantor[name]"
      assert_select "input#guarantor_guarantor_kana[name=?]", "guarantor[guarantor_kana]"
      assert_select "input#guarantor_guarantor_zip[name=?]", "guarantor[guarantor_zip]"
      assert_select "input#guarantor_guarantor_address[name=?]", "guarantor[guarantor_address]"
      assert_select "input#guarantor_guarantor_tel[name=?]", "guarantor[guarantor_tel]"
      assert_select "input#guarantor_relationship[name=?]", "guarantor[relationship]"
      assert_select "textarea#guarantor_memo[name=?]", "guarantor[memo]"
    end
  end
end
