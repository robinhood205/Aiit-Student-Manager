require 'spec_helper'

describe "exam_lists/index" do
  before(:each) do
    assign(:exam_lists, [
      stub_model(ExamList,
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
      ),
      stub_model(ExamList,
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
      )
    ])
  end

  it "renders a list of exam_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Examno".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 6
    assert_select "tr>td", :text => "Decisionreason".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 6
    assert_select "tr>td", :text => "Examination".to_s, :count => 2
    assert_select "tr>td", :text => "Examyear".to_s, :count => 2
    assert_select "tr>td", :text => "Basicknowledge".to_s, :count => 2
    assert_select "tr>td", :text => "Paper".to_s, :count => 2
    assert_select "tr>td", :text => "Presentation".to_s, :count => 2
    assert_select "tr>td", :text => "Interview".to_s, :count => 2
    assert_select "tr>td", :text => "Testscore".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 6
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
  end
end
