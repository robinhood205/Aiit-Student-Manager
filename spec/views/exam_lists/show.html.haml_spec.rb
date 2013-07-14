require 'spec_helper'

describe "exam_lists/show" do
  before(:each) do
    @exam_list = assign(:exam_list, stub_model(ExamList,
      :examno => "Examno",
      :reviewflg => false,
      :decisionreason => "Decisionreason",
      :citizenoftokyo => false,
      :examination => "Examination",
      :examyear => "Examyear",
      :basicknowledge => "Basicknowledge",
      :paper => "Paper",
      :presentation => "Presentation",
      :interview => "Interview",
      :testscore => "Testscore",
      :result => false,
      :memo => "Memo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Examno/)
    rendered.should match(/false/)
    rendered.should match(/Decisionreason/)
    rendered.should match(/false/)
    rendered.should match(/Examination/)
    rendered.should match(/Examyear/)
    rendered.should match(/Basicknowledge/)
    rendered.should match(/Paper/)
    rendered.should match(/Presentation/)
    rendered.should match(/Interview/)
    rendered.should match(/Testscore/)
    rendered.should match(/false/)
    rendered.should match(/Memo/)
  end
end
