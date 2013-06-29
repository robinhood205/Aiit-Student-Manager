require 'spec_helper'

describe "aiit_members/show" do
  before(:each) do
    @aiit_member = assign(:aiit_member, stub_model(AiitMember,
      :family_name => "Family Name",
      :given_name => "Given Name",
      :sex => "Sex"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Family Name/)
    rendered.should match(/Given Name/)
    rendered.should match(/Sex/)
  end
end
