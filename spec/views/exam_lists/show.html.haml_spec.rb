require 'spec_helper'

describe "exam_lists/show" do
  before(:each) do
    @exam_list = assign(:exam_list, stub_model(ExamList,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Exam No/)
    rendered.should match(/false/)
    rendered.should match(/Decision Reason/)
    rendered.should match(/false/)
    rendered.should match(/Examination/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
