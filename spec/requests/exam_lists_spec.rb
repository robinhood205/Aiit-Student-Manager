require 'spec_helper'

describe "ExamLists" do
  describe "GET /exam_lists" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get exam_lists_path
      response.status.should be(200)
    end
  end
end
