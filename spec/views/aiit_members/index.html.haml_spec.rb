require 'spec_helper'

describe "aiit_members/index" do
  before(:each) do
    assign(:aiit_members, [
      stub_model(AiitMember,
        :last_name => "Last Name",
        :first_name => "First Name",
        :gender => "Gender",
        :memo => "MyText"
      ),
      stub_model(AiitMember,
        :last_name => "Last Name",
        :first_name => "First Name",
        :gender => "Gender",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of aiit_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
