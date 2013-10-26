require 'spec_helper'

describe "aiit_members/show" do
  before(:each) do
    @aiit_member = assign(:aiit_member, stub_model(AiitMember,
      :name => "Name",
      :kana_name => "Kana Name",
      :gender => "Gender",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Kana Name/)
    rendered.should match(/Gender/)
    rendered.should match(/MyText/)
  end
end
