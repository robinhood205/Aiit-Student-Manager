require 'spec_helper'

describe "prospects/new" do
  before(:each) do
    assign(:prospect, stub_model(Prospect,
      :kbsnko => "MyString",
      :kbsryo => "MyString",
      :event => "MyString",
      :infoyn => false,
      :syugan => "MyString"
    ).as_new_record)
  end

  it "renders new prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospects_path, "post" do
      assert_select "input#prospect_kbsnko[name=?]", "prospect[kbsnko]"
      assert_select "input#prospect_kbsryo[name=?]", "prospect[kbsryo]"
      assert_select "input#prospect_event[name=?]", "prospect[event]"
      assert_select "input#prospect_infoyn[name=?]", "prospect[infoyn]"
      assert_select "input#prospect_syugan[name=?]", "prospect[syugan]"
    end
  end
end
