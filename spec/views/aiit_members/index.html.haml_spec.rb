require 'spec_helper'

describe "aiit_members/index" do
  before(:each) do
    assign(:aiit_members, [
      stub_model(AiitMember,
        :family_name => "Family Name",
        :given_name => "Given Name",
        :sex => "Sex"
      ),
      stub_model(AiitMember,
        :family_name => "Family Name",
        :given_name => "Given Name",
        :sex => "Sex"
      )
    ])
  end

  it "renders a list of aiit_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Family Name".to_s, :count => 2
    assert_select "tr>td", :text => "Given Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
  end
end
