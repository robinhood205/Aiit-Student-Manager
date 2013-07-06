require 'spec_helper'

describe "prospects/edit" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :wished_program => "MyString",
      :wished_material => "MyString",
      :event => "MyString",
      :contact_unnecessary => false,
      :application => "MyString"
    ))
  end

  it "renders the edit prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospect_path(@prospect), "post" do
      assert_select "input#prospect_wished_program[name=?]", "prospect[wished_program]"
      assert_select "input#prospect_wished_material[name=?]", "prospect[wished_material]"
      assert_select "input#prospect_event[name=?]", "prospect[event]"
      assert_select "input#prospect_contact_unnecessary[name=?]", "prospect[contact_unnecessary]"
      assert_select "input#prospect_application[name=?]", "prospect[application]"
    end
  end
end
