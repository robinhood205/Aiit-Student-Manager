require 'spec_helper'

describe "aiit_members/new" do
  before(:each) do
    assign(:aiit_member, stub_model(AiitMember,
      :name => "MyString",
      :gender => "MyString",
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new aiit_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aiit_members_path, "post" do
      assert_select "input#aiit_member_name[name=?]", "aiit_member[name]"
      assert_select "input#aiit_member_gender[name=?]", "aiit_member[gender]"
      assert_select "textarea#aiit_member_memo[name=?]", "aiit_member[memo]"
    end
  end
end
