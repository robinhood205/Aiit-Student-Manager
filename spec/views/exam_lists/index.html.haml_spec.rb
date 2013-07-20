require 'spec_helper'

describe "exam_lists/index" do
  before(:each) do
    assign(:exam_lists, [
      stub_model(ExamList,
        :aiit_member_id => 1,
        :exam_no => "Exam No",
        :review_flg => false,
        :decision_reason => "Decision Reason",
        :citizen_of_tokyo => false,
        :examination => "Examination",
        :exam_year => 2,
        :basic_knowledge => 3,
        :paper => 4,
        :presentation => 5,
        :interview => 6,
        :test_score => 7,
        :result => false,
        :memo => "MyText"
      ),
      stub_model(ExamList,
        :aiit_member_id => 1,
        :exam_no => "Exam No",
        :review_flg => false,
        :decision_reason => "Decision Reason",
        :citizen_of_tokyo => false,
        :examination => "Examination",
        :exam_year => 2,
        :basic_knowledge => 3,
        :paper => 4,
        :presentation => 5,
        :interview => 6,
        :test_score => 7,
        :result => false,
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of exam_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Exam No".to_s, :count => 2
    assert_select "tr>td", :text => "Decision Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Examination".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
