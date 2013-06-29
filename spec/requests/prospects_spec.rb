require 'spec_helper'

describe "Prospects" do
  describe "GET /prospects" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get prospects_path
      response.status.should be(200)
    end
  end
end
