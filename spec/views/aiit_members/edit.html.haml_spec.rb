require 'spec_helper'

describe "aiit_members/edit" do
  before(:each) do
    @aiit_member = assign(:aiit_member, stub_model(AiitMember,
      :name => "MyString",
      :kana_name => "MyString",
      :gender => "MyString",
      :memo => "MyText"
    ))
  end

  it "renders the edit aiit_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aiit_member_path(@aiit_member), "post" do
      assert_select "input#aiit_member_name[name=?]", "aiit_member[name]"
      assert_select "input#aiit_member_kana_name[name=?]", "aiit_member[kana_name]"
      assert_select "input#aiit_member_gender[name=?]", "aiit_member[gender]"
      assert_select "textarea#aiit_member_memo[name=?]", "aiit_member[memo]"
    end
  end
end
