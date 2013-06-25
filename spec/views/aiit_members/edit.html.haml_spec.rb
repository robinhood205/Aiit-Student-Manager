require 'spec_helper'

describe "aiit_members/edit" do
  before(:each) do
    @aiit_member = assign(:aiit_member, stub_model(AiitMember,
      :family_name => "MyString",
      :given_name => "MyString",
      :sex => "MyString"
    ))
  end

  it "renders the edit aiit_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aiit_member_path(@aiit_member), "post" do
      assert_select "input#aiit_member_family_name[name=?]", "aiit_member[family_name]"
      assert_select "input#aiit_member_given_name[name=?]", "aiit_member[given_name]"
      assert_select "input#aiit_member_sex[name=?]", "aiit_member[sex]"
    end
  end
end
