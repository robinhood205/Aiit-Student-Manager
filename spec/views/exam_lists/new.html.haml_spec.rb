require 'spec_helper'

describe "exam_lists/new" do
  before(:each) do
    assign(:exam_list, stub_model(ExamList,
      :aiit_member_id => 1,
      :exam_no => "MyString",
      :review_flg => false,
      :decision_reason => "MyString",
      :citizen_of_tokyo => false,
      :examination => "MyString",
      :exam_year => 1,
      :basic_knowledge => 1,
      :paper => 1,
      :presentation => 1,
      :interview => 1,
      :test_score => 1,
      :result => false,
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new exam_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exam_lists_path, "post" do
      assert_select "input#exam_list_aiit_member_id[name=?]", "exam_list[aiit_member_id]"
      assert_select "input#exam_list_exam_no[name=?]", "exam_list[exam_no]"
      assert_select "input#exam_list_review_flg[name=?]", "exam_list[review_flg]"
      assert_select "input#exam_list_decision_reason[name=?]", "exam_list[decision_reason]"
      assert_select "input#exam_list_citizen_of_tokyo[name=?]", "exam_list[citizen_of_tokyo]"
      assert_select "input#exam_list_examination[name=?]", "exam_list[examination]"
      assert_select "input#exam_list_exam_year[name=?]", "exam_list[exam_year]"
      assert_select "input#exam_list_basic_knowledge[name=?]", "exam_list[basic_knowledge]"
      assert_select "input#exam_list_paper[name=?]", "exam_list[paper]"
      assert_select "input#exam_list_presentation[name=?]", "exam_list[presentation]"
      assert_select "input#exam_list_interview[name=?]", "exam_list[interview]"
      assert_select "input#exam_list_test_score[name=?]", "exam_list[test_score]"
      assert_select "input#exam_list_result[name=?]", "exam_list[result]"
      assert_select "textarea#exam_list_memo[name=?]", "exam_list[memo]"
    end
  end
end
