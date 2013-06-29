require 'spec_helper'

describe "prospects/edit" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :kbsnko => "MyString",
      :kbsryo => "MyString",
      :event => "MyString",
      :infoyn => false,
      :syugan => "MyString"
    ))
  end

  it "renders the edit prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospect_path(@prospect), "post" do
      assert_select "input#prospect_kbsnko[name=?]", "prospect[kbsnko]"
      assert_select "input#prospect_kbsryo[name=?]", "prospect[kbsryo]"
      assert_select "input#prospect_event[name=?]", "prospect[event]"
      assert_select "input#prospect_infoyn[name=?]", "prospect[infoyn]"
      assert_select "input#prospect_syugan[name=?]", "prospect[syugan]"
    end
  end
end
