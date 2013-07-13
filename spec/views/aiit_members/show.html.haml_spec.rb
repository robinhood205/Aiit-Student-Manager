require 'spec_helper'

describe "aiit_members/show" do
  before(:each) do
    @aiit_member = assign(:aiit_member, stub_model(AiitMember,
      :last_name => "Last Name",
      :first_name => "First Name",
      :gender => "Gender",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    rendered.should match(/First Name/)
    rendered.should match(/Gender/)
    rendered.should match(/MyText/)
  end
end
