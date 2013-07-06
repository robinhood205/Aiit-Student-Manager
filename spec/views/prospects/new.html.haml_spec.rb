require 'spec_helper'

describe "prospects/new" do
  before(:each) do
    assign(:prospect, stub_model(Prospect,
      :wished_program => "MyString",
      :wished_material => "MyString",
      :event => "MyString",
      :contact_unnecessary => false,
      :application => "MyString"
    ).as_new_record)
  end

  it "renders new prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospects_path, "post" do
      assert_select "input#prospect_wished_program[name=?]", "prospect[wished_program]"
      assert_select "input#prospect_wished_material[name=?]", "prospect[wished_material]"
      assert_select "input#prospect_event[name=?]", "prospect[event]"
      assert_select "input#prospect_contact_unnecessary[name=?]", "prospect[contact_unnecessary]"
      assert_select "input#prospect_application[name=?]", "prospect[application]"
    end
  end
end
