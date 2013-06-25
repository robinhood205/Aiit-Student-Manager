require 'spec_helper'

describe "AiitMembers" do
  describe "GET /aiit_members" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get aiit_members_path
      response.status.should be(200)
    end
  end
end
